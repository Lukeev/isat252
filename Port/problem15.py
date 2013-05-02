'''
Created on Dec 24, 2012

@author: Luke
'''
import math

def lattice(number):
    fact = math.factorial(number*2)
    div = (math.factorial(number)**2)
    return fact/div
def main():
    print lattice(20000)
if __name__=="__main__":
    main()
