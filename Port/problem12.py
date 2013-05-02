'''
Created on Jan 2, 2013

@author: Luke
'''
def triangle(num):
    sum =0
    l=list()
    for i in range(0,num+1):
        sum+=i
    l.append(sum)
    for i in range(1,(sum/2)+1):
        if sum%i==0:
            l.append(i)
    return l
def main():
#    l =list()
#    for i in range(1000,2000):
#        l.append(len(triangle(i)))
#    l.sort()
#    print l
    l = list()
    for i in range(1000,1300):
        l.append(len(triangle(i)))
    l.sort()
    print l
if __name__=='__main__':
    main()