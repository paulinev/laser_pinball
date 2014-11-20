#!/usr/bin/pyton
import sys,os,os.path,traceback

mname = 'font'

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

# convert each binary string to an integer
locations = []
for line in contents:
    if len(line) == 0: continue
    elif line[0] == 'm': continue
    try:
        line = line.replace(';','')
        locations.append(int(line,2))
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

# ready to create appropriate Verilog module
try:
    vname = 'xfont.v'
    v = open(vname,'w')

    # output standard module prologue
    v.write("""// 8x12 font memory for 128 chars
module xfont(addr,clk,row);
  input clk;
  input [10:0] addr;
  output [7:0] row;

  // font read-only memory: (128 * 12row/chars) x (8 bits/row)
  RAMB16_S9 font(.CLK(clk),.ADDR(addr),.DO(row),
                 .WE(1'b0),.EN(1'b1),.SSR(1'b0));
""")

    nwords = 256/8
    lo = 0;
    width = 8;
    for init in xrange(64):
        v.write("  defparam font.INIT_%02X = 256'b" % (init))
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
