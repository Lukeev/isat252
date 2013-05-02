'''
Created on Dec 21, 2012

@author: Luke
'''
def fib(number):
    if number==0:
        return 0
    elif number==1:
        return 1
    else:
        return fib(number-1)+fib(number-2)
def main():
    list1=list()
    print fib(900)
#    for i in range(1,34):
#        if fib(i)%2==0:
#            list1.append(fib(i))
#    print list1
#    num=0
#    for each in list1:
#        num+=each
#    print num
if __name__ == "__main__":
    main()
