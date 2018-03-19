a = {4, 1, 0, 2, 9, 6, 8, 7, 14, 3}
b = {4, 6, 7, 2, 1, 0, 8, 3, 9}
A = {}

for k,v in pairs(b) do
        A[v]=true
end

for k,v in pairs(a) do
        if A[v]==nil then print(v,"Is not in the Loop") end
end