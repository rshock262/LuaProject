function balanced(str)
  regCounter = 0
  squareCounter = 0
  curlyCounter = 0
  mostRecent = {}
  for i=1, string.len(str) do
      mostRecent[i] = "0"
  end
  mostRecentNum = 0
  for i = 1, string.len(str) do
    c = string.sub(str, i, i)
    
    if (c == "(") then
      regCounter = regCounter + 1;
      mostRecentNum = mostRecentNum + 1
      mostRecent[mostRecentNum] = "("
    elseif (c == ")") then
      
      if(mostRecent[mostRecentNum] == "(") then
        regCounter = regCounter - 1
        mostRecentNum = mostRecentNum - 1
        end
      
        if(regCounter == 0) then
          else
            
            if (regCounter < 0) then
              return false;
              end
          end
end
if (c == "[") then
      squareCounter = squareCounter + 1;
      mostRecentNum = mostRecentNum + 1
      mostRecent[mostRecentNum] = "["
    elseif (c == "]") then
       if(mostRecent[mostRecentNum] == "[") then
         squareCounter = squareCounter - 1
        mostRecentNum = mostRecentNum - 1
        end
        if(squareCounter == 0) then

          else
            
            if (squareCounter < 0) then
              --print("negative")
              return false;
              end
          end
  end
if (c == "{") then
      curlyCounter =  curlyCounter + 1;
      mostRecentNum = mostRecentNum + 1
      mostRecent[mostRecentNum] = "{"
    elseif (c == "}") then
      if(mostRecent[mostRecentNum] == "{") then
         curlyCounter = curlyCounter - 1
        mostRecentNum = mostRecentNum - 1
        end
        if( curlyCounter == 0) then
          else
            if ( curlyCounter < 0) then
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