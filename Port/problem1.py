'''
Created on Dec 19, 2012

@author: Luke
'''
def numbers():
    numlist = list()
    for i in range(0,1000):
        if i%3 ==0 or i%5==0:
            numlist.append(i)
    return numlist

def addNums(listNum):
    num = 0
    for i in listNum:
        num+=i
    print num

def main():
    listnums = numbers()
    addNums(listnums)    
       
if __name__ == "__main__":
    main()