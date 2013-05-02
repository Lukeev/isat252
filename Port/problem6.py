'''
Created on Dec 19, 2012

@author: Luke
'''
def squares():
    sum=0
    for i in range(0,101):
        sum+=i**2
    return sum
def squares2():
    sum=0
    for i in range(0,101):
        sum +=i
    return sum**2        
def main():
    num1=squares()
    num2=squares2()
    print num1
    print num2
    print num2-num1
           
if __name__ == "__main__":
    main()