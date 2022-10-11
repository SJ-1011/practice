
def PrimMST(list, N, p):
    D = set()
    D.add(p)
    distance = 0
    v = 1
    while (v <= N):
        if v not in D:
            list[0][v] = list[p][v]
        v = v + 1

    return list

    
        
    




N, M = map(int, input().split())
list = [[0] * (N + 1) for _ in range(N + 1)]

for _ in range(M):
    x, y, value = map(int, input().split())
    list[x][y] = value
    list[y][x] = value


print(PrimMST(list, N, 1))

