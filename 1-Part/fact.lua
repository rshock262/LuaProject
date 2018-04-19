function factorial(n)
  if n == 0 then
    return 1
  else
    return n * factorial(n - 1)
  end
end

print("Enter number for factorial calculation")
x = io.read("*n")

print("Result: "..factorial(x))