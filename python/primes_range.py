#!/usr/bin/python3.11
import os
import time
SOULDRUN = True
LAST_PRIME_TIME = time.time()

FILENAME='/home/kali/primes.txt'

def beep(freq, dur):
    os.system(f'beep -f {freq} -l {dur}')

def appendToFile(num,deltatime):
    f = open(FILENAME, 'a')
    f.write(str(num)+';'+str(deltatime)+'\n')
    f.close()

    
    
def foundprime(num):
    global LAST_PRIME_TIME
    now = time.time()
    deltatime = now - LAST_PRIME_TIME
    print(f'We found new prime ! {str(num)} after {deltatime}s of searching. Yeah!')
    appendToFile(num, deltatime)
    LAST_PRIME_TIME = now



def loop():
    num = 1
    while num > 0:
        num += 1
        prime = True
        for i in range(2,num):
            if (num % i) == 0:
               prime = False
               break

        if (prime):
            foundprime(num)
        else:
            print('.',end='')

loop()