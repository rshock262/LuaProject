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

function printResult (a)
    for i,v in ipairs(a) do
        io.write(v, " ")
    end
        io.write("\n")
    end
permute ({'a','b','c','d'}, 4)