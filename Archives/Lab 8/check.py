import struct
from manta import Manta
m = Manta('lab08.yaml') # create manta python instance using yaml

#val3 = [11, 5, 7, 10, 22, 310, 100, 9, 50, 76]
#val4 = [9101, 1000, 365, 500, 220, 7689, 1200, 9, 1100, 8911]

#for i in range(10):
    #m.lab8_io_core.val3_out.set(val3[i]) # set the value val3_out to be val3
   # m.lab8_io_core.val3_out.set(15.1)
    #m.lab8_io_core.val4_out.set(val4[i]) # set the value val4_out to be val4
    #a = m.lab8_io_core.val1_in.get() # read in the output from our operation
    #b = m.lab8_io_core.val2_in.get() # read in the output from our operation
    #print(f"Values in were {val3[i]} and {val4[i]} with results {val4[i]}//{val3[i]}={val4[i]//val3[i]} and {val4[i]}%{val3[i]}={val4[i]%val3[i]}.")
    #print(f"Actual results were: {a} and {b}!")
script = input('Up or down? ')
val3 = [10.5, 21.43, 100.5, 117, 349.1]
val4 = [21, 44.11, 2000, 716.3, 777]
for i in range(5):
    val3[i] = struct.pack('f', val3[i])
    val4[i] = struct.pack('f', val4[i])
    val3[i] = struct.unpack('i', val3[i])[0]
    val4[i] = struct.unpack('i', val4[i])[0]
    m.lab8_io_core.val3_out.set(val3[i]) # set the value val3_out to be val3
    m.lab8_io_core.val4_out.set(val4[i]) # set the value val4_out to be val4
    a = m.lab8_io_core.val1_in.get() # read in the output from our operation
    b = m.lab8_io_core.val2_in.get() # read in the output from our operation
    a = struct.pack('i', a)
    b = struct.pack('i', b)
    a = struct.unpack('f', a)[0]
    b = struct.unpack('f', b)[0]
    val3[i] = struct.pack('i', val3[i])
    val4[i] = struct.pack('i', val4[i])
    val3[i] = struct.unpack('f', val3[i])[0]
    val4[i] = struct.unpack('f', val4[i])[0]
    if (script == 'down'):
        print(f"Values in were {val3[i]} and {val4[i]} with results {val4[i]}//{val3[i]}={val4[i]//val3[i]} and {val4[i]}%{val3[i]}={val4[i]%val3[i]}.")
    else:
        print(f"Values in were {val3[i]} and {val4[i]} with results {val4[i]}^2 + {val3[i]}^2 = {val4[i]**2+val3[i]**2} and ({val4[i]}^2 + {val3[i]}^2)^(-1) = {1 / (val4[i]**2+val3[i]**2)**0.5}.")
    print(f"Actual results were: {a} and {b}!")