'''
Created on Dec 21, 2012

@author: Luke
'''
def num():
    number =2**1000
    stringnum =0
    numberstring = str(number)
    for each in numberstring:
        stringnum+=int(each)
    return stringnum
def main():
    print num()
if __name__=="__main__":
    main()