'''
Created on Jan 2, 2013

@author: Luke
'''
def primes(num):
    num*=1.0
    if num%2==0 and num!=2:
        return False
    for i in range(3,int(num**.5)+1,2):
        if num%i==0:
            return False
    return True
def main():
    l =list()
    sum =0
    for i in range(2,2000000):
        if primes(i):
            l.append(i)
    for each in l:
        if 600851475143%each ==0:
            print each
if __name__=='__main__':
    main()