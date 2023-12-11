print('Jay Rathod T127')
a=input("Enter a String: ")
b=input("Enter a String: ")
A=[[0 for i in range(len(b)+1)]for j in range(len(a)+1)]
for i in range(len(a)+1):
    A[i][0]=i
for j in range(len(b)+1):
    A[0][j]=j
for i in range(1,len(a)+1):
    for j in range(1,len(b)+1):
        if a[i-1]==b[j-1]:
            A[i][j]=A[i-1][j-1]
        else:
            delete=1+A[i-1][j]
            replace=1+A[i-1][j-1]
            insert=1+A[i][j-1]
            A[i][j]=min(insert,delete,replace)
print("Levenshtein Distance",A[len(a)][len(b)])
