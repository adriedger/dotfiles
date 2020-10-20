# min dist for bot to remove obstacle
# lot is 2d grid
# bot starts at top left corner, can move up,down,left,right
#cannot enter trenches, leave lot
#flat are 1, trenches are 0, obstacle is 9

numRows = 3
numColumns = 3
lot = [ [1, 1, 1],
        [1, 0, 1],
        [1, 9, 1]]

def nearest(numRows, numColumns, lot, y, x, path, all_path):
    if lot[y][x] == 9:
        # print("yo")
        all_path.append(len(path)-1)
        path.pop()
        return
    try:#if out of range
        if lot[y+1][x] in [1,9] and [y+1,x] not in path:##bot
            path.append([y+1,x])
            nearest(numRows, numColumns, lot, y+1, x, path, all_path)
    except Exception as e:
        pass
    try:
        if lot[y][x+1] in [1,9] and [y,x+1] not in path:##right
            path.append([y,x+1])
            nearest(numRows, numColumns, lot, y, x+1, path, all_path)
    except Exception as e:
        pass
    if lot[y-1][x] in [1,9] and [y-1,x] not in path and y != 0:##up
        path.append([y-1,x])
        nearest(numRows, numColumns, lot, y-1, x, path, all_path)
    if lot[y][x-1] in [1,9] and [y,x-1] not in path and x != 0:##down
        path.append([y,x-1])
        nearest(numRows, numColumns, lot, y, x-1, path, all_path)
    #remove path from list if dead end
    path.pop()

#recursion needs to be used
def removeObstacle(numRows, numColumns, lot):
    start_yx = [0,0]
    path = [start_yx]
    all_path = []
    nearest(numRows, numColumns, lot, start_yx[1], start_yx[0], path, all_path)
    # print(path)
    print(all_path)
    return min(all_path)
    
print(removeObstacle(numRows, numColumns, lot))
#done and verified
