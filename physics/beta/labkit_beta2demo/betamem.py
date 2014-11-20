#!/usr/bin/pyton
import sys,os,os.path,traceback

# get name of code/module
if (len(sys.argv) != 2):
    print "Usage: betamem <modulename>"
    sys.exit(0)

mname = sys.argv[1]

# read in memory contents
coename = mname + ".coe"
if not os.path.exists(coename):
    print "Oops: can't find %s" % coename
    sys.exit(0)
try:
    f = open(coename)
    contents = f.read()  # read in entire file
    f.close()
except Exception,e:
    print "Oops:",e
    sys.exit(0)

# make a list, one entry per location.  Skip past
# any coe header lines.
contents = contents.replace(',','').split('\n')

# convert each hex string to an integer
locations = []
for line in contents:
    if len(line) == 0: continue
    elif line[0] == 'm': continue
    try:
        line = line.replace(';','')
        locations.append(int(line,16))
    except Exception,e:
        print "Oops: error reading location",(len(locations)+1),": ",e
        sys.exit(0)
nlocs = len(locations)

# helper function returns binary string with WIDTH
# digits from BITOFFSET within location LOCN
def bits(width,bitoffset,locn):
    if locn >= nlocs: v = 0
    else: v = locations[locn]
    v >>= bitoffset;
    result = []
    for i in xrange(width):
        if v % 2 == 0: result.append('0')
        else: result.append('1')
        v >>= 1
    result.reverse()
    return ''.join(result)

# see what BRAM organization to use
if (nlocs <= 512):
    nmems = 1            # use a single 512 x 36 BRAM
    bram = "RAMB16_S36"
    naddr = 9
    width = 32
elif (nlocs <= 1024):
    nmems = 2            # use two 1024 x 16 BRAMs
    bram = "RAMB16_S18"
    naddr = 10
    width = 16
elif (nlocs <= 2048):
    nmems = 4            # use four 2048 x 8 BRAMs
    bram = "RAMB16_S9"
    naddr = 11
    width = 8
elif (nlocs <= 4096):
    nmems = 8            # use eight 4096 x 4 BRAMs
    bram = "RAMB16_S4"
    naddr = 12
    width = 4
elif (nlocs <= 8192):
    nmems = 16           # use sixteen 8192 x 2 BRAMs
    bram = "RAMB16_S2"
    naddr = 13
    width = 2
elif (nlocs <= 16384):
    nmems = 31           # use thirty-two 16384 x 1 BRAMs
    bram = "RAMB16_S1"
    naddr = 14
    width = 1
else:
    print "Oops: %d is too big, can only support up to 16k locations" % nlocs
    sys.exit(0)

# ready to create appropriate Verilog module
try:
    vname = mname + ".v"
    v = open(vname,'w')

    # output standard module prologue
    v.write("""// single-port read/write memory initialized with %s code
module %s(addr,clk,din,dout,we);
  input [13:0] addr;     // up to 16K locations
  input clk;             // memory has internal address regs
  input [31:0] din;      // appears after rising clock edge
  output [31:0] dout;    // written at rising clock edge
  input we;              // enables write port

  // we're using %d out of %d locations
""" % (mname,mname,nlocs,1 << naddr))

    # output appropriate number of BRAM instances
    for i in xrange(nmems):
        lo = i * width
        hi = lo + width - 1
        v.write("  %s m%d(.CLK(clk),.ADDR(addr[%d:0]),.DI(din[%d:%d]),.DO(dout[%d:%d]),.WE(we),.EN(1'b1),.SSR(1'b0));\n" % (bram,i,naddr-1,hi,lo,hi,lo))
        # output defparams to initialize this BRAM block
        nwords = 256/width
	for init in xrange(64):
	    v.write("  defparam m%d.INIT_%02X = 256'b" % (i,init))
            start = init * nwords
            first = True
            for locn in xrange(start+nwords,start,-1):
                if first: first = False
                else: v.write('_')
                v.write(bits(width,lo,locn-1))
            v.write(';\n')

    v.write("\nendmodule")
    v.close()
except Exception,e:
    print "Oops:",e
    sys.exit(0)

# finished!
