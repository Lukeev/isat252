'''
Created on Jan 1, 2013

@author: Luke
'''

def fastfib(n):
    seq =[0,1,1]
    for i in range(3,n+1):
        seq.append(seq[i-1]+seq[i-2])
    return seq[n]
def main():
     print fastfib(1000)
     
    
if __name__ == '__main__':
    main()