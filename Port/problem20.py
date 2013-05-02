'''
Created on Dec 21, 2012

@author: Luke
'''
def fact(number):
    if number <=1:
        return 1
    else:
        return number*fact(number-1)
def factadd(number):
    sum =0
    newnum = str(number)
    for each in newnum:
        sum+=int(each)
    return sum
def main():
    
    print factadd(num)

if __name__=="__main__":
    main()