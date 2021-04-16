def max_heapify(A, i):
    print(A)
    left = 2 * i + 1
    right = 2 * i + 2
    largest = i
    if left < len(A) and A[left] > A[largest]:
        largest = left
    if right < len(A) and A[right] > A[largest]:
        largest = right
    if largest != i:
        A[i], A[largest] = A[largest], A[i]
        max_heapify(A, largest)

def build_max_heap(A):
    for i in range(12 // 2, -1, -1):
        max_heapify(A, i)

#def ptree(A, i=0, indent=0):
#    if i < len(A):
#        print '  ' * indent, A[i]
#        ptree(A, i * 2 + 1, indent + 1)
#        ptree(A, i * 2 + 2, indent + 1)

#A = [15, 3, 4, 9, 2, 10, 5] 
#build_max_heap(A)
#ptree(A)

BST = [15, 11, 42, 3, 25, 32]

def height(T):
    #print T
    n = len(T)//2
    L = T[:n]
    R = T[n:]
    if n == 0:
        R = []
    if not T:
        return 0
    #if len(T) == 1:
        #return 0
    else:
        return 1 + max(height(L), height(R))

print height([15])
print height([])
print height(BST)
print height(BST[:-1])
