#schedule is 2d array, in HH:MM, find all potential free slots between 7:00 and 18:00

schedule = [["16:00","16:30"],
            ["6:00","7:30"],
            ["8:00","9:00"],
            ["8:00","9:20"],
            ["17:30","19:20"]]

schedule2 = [["12:00","17:30"],
            ["8:00","10:00"],
            ["10:00","11:30"]]
#convert each time into decimal notation
#find which ranges do not overlap
# -> create a list of intervals at .33???

def findFreeTime(schedule):
    decimal_times = []
    for y in schedule:
        # print(y)
        dec_h, min_m = y[0].split(':')
        dec_m = float(min_m) / 0.6 * 0.01
        t_start = float(dec_h)+dec_m
        
        dec_h, min_m = y[1].split(':')
        dec_m = float(min_m) / 0.6 * 0.01
        t_end = float(dec_h)+dec_m
        # print(t_start, '-', t_end)

        decimal_times.append((t_start*6, t_end*6))##quantize to ints
    yo = []
    free_times_discrete = []
    intervals= []
    # print(decimal_times)
    for t in range(7*6, 18*6):
        # print(t)
        flag = True
        for y in decimal_times:
            for i in range(int(y[0]), int(y[1])):
                if t == i:
                    flag = False
                
        if flag:
            yo.append(t)
            try:
                if t != free_times_discrete[-1]+1:#wrap group
                    intervals.append(free_times_discrete)
                    free_times_discrete = [t]
                else:
                    free_times_discrete.append(t)
            except:
                free_times_discrete.append(t)
    intervals.append(free_times_discrete)
            
    # print(yo)
    print(intervals)
    output_sched =[]
    for i in intervals:
        s1 = min(i)/6
        dec_m = s1 % 1
        min_m = int(dec_m / 0.01 * 0.6)
        dec_h = int(s1)
        s2 = (max(i)+1)/6
        dec_m2 = s2 % 1
        min_m2 = int(dec_m2 / 0.01 * 0.6)
        dec_h2 = int(s2)
        if min_m2 == 0:
            min_m2='00'
        if min_m == 0:
            min_m='00'
        # print(str(dec_h)+':'+str(min_m))
        output_sched.append([str(dec_h)+':'+str(min_m),str(dec_h2)+':'+str(min_m2)])
    print(output_sched)
    return output_sched


findFreeTime(schedule2)
#done and verified
