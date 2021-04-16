#!/usr/bin/python3

import sys

infostring = sys.stdin.read()

#infostring = 'Product Dimensions 71.1 x 12.7 x 38.1 cm'
dims = []

for s in infostring.split():
    try:
        f = float(s)
        dims.append(f)
    except:
        continue

print(dims)

l_half = dims[0]/2
w_half = dims[1]/2
h = dims[2]

obj = open('test.obj', 'w')
#line1 = str('v', dims[0]/2, dims[1]/2, dims[2])
obj.write('v {0}, {1}, {2}\n'.format(l_half, w_half, 0))
obj.write('v {0}, {1}, {2}\n'.format(-l_half, w_half, 0))
obj.write('v {0}, {1}, {2}\n'.format(-l_half, -w_half, 0))
obj.write('v {0}, {1}, {2}\n'.format(l_half, -w_half, 0))

obj.write('v {0}, {1}, {2}\n'.format(l_half, w_half, h))
obj.write('v {0}, {1}, {2}\n'.format(-l_half, w_half, h))
obj.write('v {0}, {1}, {2}\n'.format(-l_half, -w_half, h))
obj.write('v {0}, {1}, {2}\n'.format(l_half, -w_half, h))

obj.write('\nf 1 2 3 4\n'
            'f 1 2 6 5\n'
            'f 1 4 8 5\n'
            'f 2 3 7 6\n'
            'f 3 4 8 7\n'
            'f 5 6 7 8\n')

