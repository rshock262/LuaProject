function power(n, p)
  result = n
  for i = 1, p-1 do
    result = result * n
  end
  return result
end

print("Enter number")
x1 = io.read("*n")

print("Enter power")
x2 = io.read("*n")

print("Result: "..power(x1, x2))