# Hello World program in Python
#houses reprecented as cells in straight line
#1 is active, 0 inactive
#if neighbours on both sides are either active or inactive, cell becomes inactive
#else becomes active
#cells on end assume other end is inactive
#all cells updated simultaneously

#states=[1, 0, 0, 0, 0, 1, 0, 0]
#days=1
states=[1, 1, 1, 0, 1, 1, 1, 1]
days=2

#dic with key being position and value being state
def cellState(states, days):
    dic = {}
    for i in range(len(states)):
        dic.update({i:states[i]})
    print(dic)
    #over the days
    for d in range(days):
        new_dic = {}
        for key in dic:
            if key == 0:#left condition
                n1 = 0
                n2 = dic[key+1]
            elif key == len(states)-1:#right condition
                n1 = dic[key-1]
                n2 = 0
            else:
                n1 = dic[key+1]
                n2 = dic[key-1]
            
            if n1 == n2:
                new_dic.update({key:0})
            else:
                new_dic.update({key:1})
        print(new_dic)
        dic = new_dic
    

cellState(states, days)
