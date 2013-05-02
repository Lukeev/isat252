'''
Created on Dec 28, 2012

@author: Luke
'''
def idempo():
    list1 = list()
    for i in range(0,10000000):
        num = i**2%i
        list1.append(num)
    print max(list1)
def main():
    idempo()
if __name__=="__main__":
    main()