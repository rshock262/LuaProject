--permutes through list 'a', n times
function permute (a, n)
    if n == 0 then
        printResult(a)
    else
        for i=1,n do
            a[n], a[i] = a[i], a[n]

            permute(a, n - 1)

            a[n], a[i] = a[i], a[n]
        end
    end
end
--prints the result
function printResult (a)
    for i,v in ipairs(a) do
        io.write(v, " ")
    end
        io.write("\n")
    end
--Enter characters here one by one followed by the total number of characters
permute ({'a','b','c'}, 3)


--TODO Make input a string, and take in string broken into characters along with string length
print("Enter a few characters, not too many though since there's a lot of output")
s= io.read("*l")
strarray = {}
for i = 1, s do
    strarray[i] = s:sub(i,i)
end
permute(strarray, s:len())