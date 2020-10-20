#Given a string str and an integer k, you need to rearrange the string in a way that the same 
#characters must be at least k distance away. If not possible, return "".

a = 'aabbbcccc'
c = 'aaaa'
b = 2

#run thourgh string 1 time, find all unique chars
#count reacurrenses of chars
#put chars into new string starting with char with most occurences in order they were found until they are all done
#run check to see if new string firs rule 

def rearrangeString(in_str, sep_len):
    #find unique chars, count reacurrenses
    chars = {}
    for c in in_str:
        new = True 
        for k in chars:
            if k == c:
                new = False
                chars[k] += 1
        if new:
            chars.update({c:1})
    
    #sort dic by value descending
    sorted_dic = dict(sorted(chars.items() , reverse=True, key=lambda x: x[1]))
    
    #add to string one c at a time
    count = 0
    new_str = []
    old_char = ""
    while count < len(in_str):
        for k in sorted_dic:
            if chars[k] > count:#still c remaining
                if k in new_str[-sep_len+1:]:
                    # print(k)
                    return ""
                else:
                    new_str += k
                old_char = k
        count += 1
    return new_str


print(rearrangeString(a, b))

