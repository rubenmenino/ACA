from itertools import permutations  
  
# Get all permutations of [1, 2, 3]  
perm = permutations([3,3,3,1,2,4])  

a = list(perm)
setNow = set(a)
#print(setNow)

# Print the obtained permutations  
for i in setNow:  
    print(i)


