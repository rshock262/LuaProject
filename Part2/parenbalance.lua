function balanced(str)
  regCounter = 0
  squareCounter = 0
  curlyCounter = 0
  
  for i = 1, string.len(str) do
    --print( string.sub(str, i, i) )
    c = string.sub(str, i, i)
    
    if (c == "(") then
      regCounter = regCounter + 1;
    elseif (c == ")") then
      regCounter = regCounter - 1
        if(regCounter == 0) then
          --print("test")
        
          else
            
            if (regCounter < 0) then
              --print("negativ")
              return false;
              end
          end
          
  

end

for i = 1, string.len(str) do
if (c == "[") then
      squareCounter = squareCounter + 1;
    elseif (c == "]") then
      squareCounter = squareCounter - 1
        if(squareCounter == 0) then
          --print("test")
        
          else
            
            if (squareCounter < 0) then
              --print("negative")
              return false;
              end
          end
  end

end
end
for i = 1, string.len(str) do
if (c == "{") then
      curlyCounter =  curlyCounter + 1;
    elseif (c == "}") then
       curlyCounter =  curlyCounter - 1
        if( curlyCounter == 0) then
          --print("test")
        
          else
            
            if ( curlyCounter < 0) then
              --print("negative")
              return false;
              end
          end
  end

end




return true

end

print("Enter string to check")
input = io.read("*l")

--Call Function
balanced(input)

--print(curlyCounter)
--print(squareCounter)
--print(regCounter)

if(regCounter == 0 and curlyCounter == 0 and squareCounter == 0) then
  print("Parenthesis are balanced")
  else
  print("Parenthesis are not balanced")  
end