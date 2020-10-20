#2d array, letter is adjacent if 1 block up, down , left right, same block may not be used more than once
#find longest word that exits in array and list

arr = [ ['I','R','G','L','U'],
        ['P','A','C','E','F'],
        ['P','O','N','O','D'],
        ['L','E','E','C','E'],
        ['E','G','A','N','T']]
wordList = ['confident', 'apple', 'aonecode', 'elegant', 'graceful', 'delightful']

#for each in wordlist, start with first letter
#find letter in array
#follow all possible paths
#save length
def nearest(s, arr, y, x, used_yx, count):
    try:
        if s[count] == arr[y-1][x] and (y-1,x) not in used_yx and y > 0:##top
            used_yx.append((y-1,x))
            nearest(s, arr, y-1, x, used_yx, count+1)#recursion
    except:
        pass
    try:
        if s[count] == arr[y][x-1] and (y,x-1) not in used_yx and x > 0:##left
            used_yx.append((y,x-1))
            nearest(s, arr, y, x-1, used_yx, count+1)#recursion
    except:
        pass
    try:
        if s[count] == arr[y+1][x] and (y+1,x) not in used_yx:##bot
            used_yx.append((y+1,x))
            nearest(s, arr, y+1, x, used_yx, count+1)#recursion
    except:
        pass
    try:
        if s[count] == arr[y][x+1] and (y,x+1) not in used_yx:##right
            used_yx.append((y,x+1))
            nearest(s, arr, y, x+1, used_yx, count+1)#recursion
    except:
        pass



def findLongest(arr, wordList):
    max_count=0
    longest_words=[]
    for s in wordList:
        s = s.upper()
        print(s)
        for y in range(len(arr)):
            for x in range(len(arr[:])):
                if arr[y][x] == s[0]:##find first letter
                    used_yx = []
                    # print(x,y)
                    used_yx.append((y,x))
                    nearest(s, arr, y, x, used_yx, 1)#recurse maze
                    print(used_yx)
                    print(len(used_yx))
                    if len(used_yx) > max_count:
                        max_count = len(used_yx)
                        longest_words = [s]
                    elif len(used_yx) == max_count:
                        longest_words.append(s)
    return longest_words




print(findLongest(arr, wordList))
