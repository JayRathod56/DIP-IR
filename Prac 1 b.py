print('Jay Rathod T-127')

def VofStr(t,x):
    
    for i in range (0,len(x)):
        if t in x:
            return 1
        else:
            return 0
        
s1=[item for item in input ('Enter 1st String: ').split()]
s2=[item for item in input ('Enter 2nd String: ').split()]
s3=[item for item in input ('Enter 3rd String: ').split()]
t=str(input('Enter a Word: '))
print('Vector : ',VofStr(t,s1),VofStr(t,s2),VofStr(t,s3))
