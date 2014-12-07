import math

f = open('sine-table.txt', 'w')
#f.write('this is a test\n')


#modifies the file sin.txt

for i in range(0,180):
    #i = 160
    bin_str = ''
    dec = math.sin(i*math.pi/180.0)
    check = dec
    dec = dec*(2**6)
    bin_str = bin(int(dec))[2:]
    print bin_str
    while len(bin_str)<6:
        bin_str = '0' + bin_str
    print bin_str
    bin_val = int(bin_str,2)
    hex_str = hex(bin_val)

    print check,bin(bin_val)
    if i%4==3:
        f.write("LONG(" + hex_str + ')\n')
    else:
        f.write("LONG(" + hex_str + '), ')

f.close()
