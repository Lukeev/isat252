'''
Created on Dec 24, 2012

@author: Luke
'''
def count():
    numlist = list()
    for i in range(1,100):
        for each in range (1,100):
            max=0
            num = i**each
            num2 = str(num)
            for j in num2:
                max+=int(j)
            numlist.append(max)
            numlist.sort()
    print numlist
def main():
    count()
if __name__=="__main__" :
    main()      