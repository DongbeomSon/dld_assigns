import random
import numpy as np
genNum = 10
fp_mat = []
out = []
ex = []

f = open('tb_acc.txt','w')
g = open('ans_acc.txt','w')

c=0
for idx in range(genNum):
    x_f32 = random.uniform(-1, 2)
    a = np.float16(x_f32)

    t = bin(np.float16(a).view('H'))[2:].zfill(16)
    f.write("\ta = 16'h" + hex(int(t, 2)) + ";\n")

    x_f32 = random.uniform(-2, 2)
    b = np.float16(x_f32)
    t = bin(np.float16(b).view('H'))[2:].zfill(16)
    f.write("\tb = 16'h" + hex(int(t, 2)) + ";\n")
    f.write("\t#20\n")
    
    c = a*b +c
    print(c)
    t = bin(np.float16(c).view('H'))[2:].zfill(16)
    g.write(hex(int(t, 2)) + "\n")

f.close()
g.close()
