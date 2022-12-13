import random
import numpy as np
genNum = 10
fp_mat = []
out = []
ex = []

f = open('tb.txt','w')
g = open('ans.txt','w')
h = open('ans_add.txt', 'w')

for idx in range(genNum):
    x_f32 = random.uniform(-100,200)
    a = np.float16(x_f32)

    t = bin(np.float16(a).view('H'))[2:].zfill(16)
    f.write("\tA = 16'h" + hex(int(t, 2)) +";\n")

    x_f32 = random.uniform(-100,200)
    b = np.float16(x_f32)
    t = bin(np.float16(b).view('H'))[2:].zfill(16)
    f.write("\tB = 16'h" + hex(int(t, 2)) +";\n")
    f.write("\t#200\n")
    c = a*b

    t = bin(np.float16(c).view('H'))[2:].zfill(16)
    g.write(hex(int(t, 2)) + "\n")

    c = a+b
    t = bin(np.float16(c).view('H'))[2:].zfill(16)
    h.write(hex(int(t, 2)) + "\n")

f.close()
g.close()
h.close()