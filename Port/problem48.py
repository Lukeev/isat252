'''
Created on Dec 21, 2012

@author: Luke
'''
def selfprime():
    sum = 0
    for i in range(1,1000):
         sum+=i**i
    return sum
def main():
    print selfprime()
    
if __name__ == "__main__":
    main()