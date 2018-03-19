function start(x)
  firstGuess = true
  endGame = false
  amountOfPlayers = x
  math.randomseed( os.time() )
  numOfPerp = 3
  
  print("Debug: " .. numOfPerp .. " Perp(s) Selected")
  
  aEliminated = {false, false, false}
  a = {true, true, true, true, true, true, true}
  for i = 1, numOfPerp do
    selectedPerp = math.random(1,7)
    while(a[selectedPerp] == false) do
      selectedPerp = math.random(1,7)
    end
    
    a[selectedPerp] = false
    
    print("Debug: " .. selectedPerp .. " Selected")
  end
  
  aTemp = {true, true, true, true, true, true, true}
  

  while (endGame == false) do
  
  print("Criminals up for Inspection:")
  for i = 1, 3 do
    selectedPerp = math.random(1,7)
    while(aTemp[selectedPerp] == false) do
      selectedPerp = math.random(1,7)
    end
    
    aTemp[selectedPerp] = false
    
   -- print("Debug: " .. selectedPerp .. " Selected for Inspection")
    print("Criminal # " .. selectedPerp)
  end
  
  
  hitCounter = 0
  for i = 1, 7 do
    if(a[i] == false and aTemp[i] == false) then
      hitCounter = hitCounter + 1
    end
  end
  
  print(hitCounter .. " of them are the perpetrators!")
  aTemp = {true, true, true, true, true, true, true}
  
  for i = 1, amountOfPlayers do
    if (aEliminated[i] == true) then
      i = i + 1
      
    end
    if (aEliminated[i] == true) then
      i = i + 1
      
    end
    
    
    if(firstGuess == true) then
      firstGuess = false
    else
      print("Player " .. i .. " would you like to guess? (please enter yes or no)")
    end
    
      guessPrompt = io.read("*l")
      
    while (guessPrompt ~= "yes" and guessPrompt ~= "no") do
      print("Player " .. i .. " would you like to guess? (please enter yes or no)")
      guessPrompt = io.read("*l")
    end
    
    if(guessPrompt == "yes") then
      print("Enter Perp #1 (1-7)")
      input = io.read("*n")

        while (input > 7 or input < 1) do
        print("*invalid input* Enter Perp #1 (1-7)")
        input = io.read("*n")
        end
        
      guessOne = input
      
      
      
      print("Enter Perp #2 (1-7)")
      input = io.read("*n")
      
      if(input == guessOne) then
        input = 0
      end

        while (input > 7 or input < 1) do
        print("*invalid input* Enter Perp #2 (1-7)")
        input = io.read("*n")
        if(input == guessOne) then
        input = 0
        end
        end  
        
      guessTwo = input  
      
      if(input == guessTwo or guessThree == guessOne) then
        input = 0
      end
        
      print("Enter Perp #3 (1-7)")
      input = io.read("*n")

        while (input > 7 or input < 1) do
        print("*invalid input* Enter Perp #3 (1-7)")
        input = io.read("*n")
        if(input == guessTwo or guessThree == guessOne) then
        input = 0
        end
        end  
        
      guessThree = input  
      
      if(a[guessOne] == false and a[guessTwo] == false and a[guessThree] == false) then
        return("Player " .. i .. " has guessed correctly!")
        else
        print("Player " .. i .. " has guessed incorrectly and has been eliminated!")
        aEliminated[i] = true
        amountOfPlayers = amountOfPlayers - 1
        if(amountOfPlayers == 0) then
          endGame = true
          return("All players have been eliminated")
        end
      end
      
        
        
      firstGuess = true
    end
    
    
  end
  
  
  
  end
  
  
end

print("Enter number of players (1-3)")
input = io.read("*n")

while (input > 3 or input < 1) do
print("*INVALID INPUT* Enter number of players (1-3)")
input = io.read("*n")
end

print("Starting...")

print(start(input))