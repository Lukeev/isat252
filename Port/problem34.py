'''
Created on Dec 28, 2012

@author: Luke
'''
import math

def digitFac(number):
    final = 0 
    for i in range(2,number):
        number2 = str(i)
        sum =0 
        for each in number2:
            sum += int(each)**5
        if sum == i:
            final+= i
    print final
def main():
    digitFac(1000000)
if __name__ == "__main__":
    main()