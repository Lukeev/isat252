'''
Created on Dec 22, 2012

@author: Luke
'''
def readAdd():
    sum =0
    file = open("num.txt")
    listnum = file.readlines()
    for each in listnum:
        sum+=int(each)
    return sum
def main():
    print readAdd()
    
if __name__ =="__main__":
    main()