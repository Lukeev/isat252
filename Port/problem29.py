'''
Created on Dec 23, 2012

@author: Luke
'''

def calc():
    num = list()
    for i in range(2,101):
        for j in range(2,101):
            if i**j not in num:
                num.append(i**j)
    print len(num)
def main():
    calc()
if __name__=="__main__":
    main()
        