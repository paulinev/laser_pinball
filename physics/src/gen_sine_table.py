import math

f = open('sine-table.txt', 'w')
#f.write('this is a test\n')


#modifies the file sin.txt

for i in range(0,256):
    bin_str = ''
    neg = 0
    dec = math.sin(i)
    if dec < 0
        neg = 1
        dec = -dec
    for j in range(0,6):
        dec = dec/(2**j)
        if dec > 1/(2**(j+1)):
            bin_str += ('0' if neg else '1')
        else bin_str += ('1' if neg else '0')
    if neg:
        bin_temp = int(bin_str,2)
        bin_temp = bin_temp^0b111111 + 1
        bin_str = bin(

f.close()
