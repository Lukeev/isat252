'''
Created on Dec 21, 2012

@author: Luke
'''
def divis(number):
    divisible =0
    if number%7!=0 or number%11!=0 or number%13!=0 or number%17!=0 or number%19!=0:
        return 0
    else:
        for i in range(1,21):
            if number%i==0:
                divisible+=1
        return divisible

def main():
    for i in range(100000000,400000000):
        if divis(i)==20:
            print i

if __name__ == "__main__":
    main()