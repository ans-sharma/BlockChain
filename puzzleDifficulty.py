def bitsToHash64(val):
    # print(val)
    index = int(val[:4],16)
    # print(index)
    cofficient = int(val[4:], 16)
    # print(cofficient)
    # formula Target = coefficient * 2 ^(8 * (index -3))
    target = cofficient*2**(0x08*(index-0x03))
    # print(target)
    target = hex(target)
    # print(target)
    target = '0x' + target[2:].zfill(64)
    # print(target)
    # intTarget = int(target, 16)
    # print(intTarget)
    return target


# new = bitsToHash64('0x1709fd7e')
# old = bitsToHash64('0x1709ed88')
# old = bitsToHash64('0x1761e9f8')
# new = bitsToHash64('0x176c2146')

# if int(old, 16) > int(new, 16):
#     print('Difficulty dec')
#     difPer = ((int(new, 16) - int(old, 16))/int(old, 16)) * 100
#     print(difPer)
# else:
#     print('Difficulty inc')
#     difPer = ((int(new, 16) - int(old, 16))/int(old, 16)) * 100
#     print(difPer)

old = bitsToHash64('0x1709fd7e')
new = bitsToHash64('0x1709ed88')

# difPer = ((int(new, 16) - int(old, 16))/int(old, 16)) * 100
# print(difPer)

# print(int(old,16))
# print(old)
w = 2015  * (10)
v = 2015 * ((9) + 50/60)
# v = 2016 * 10
y= w / v
print(y)
z = int(int(old, 16) * y)
print(z)