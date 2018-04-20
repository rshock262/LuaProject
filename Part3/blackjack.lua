function start(x, c)
 
  math.randomseed( os.time() )
  numOfDecks = x
  _G.numOfCards = x * 52
  credits = c
  dealerTotal = 0
  playerTotal = 0
  dealerAce = 0
  playerAce = 0
 
  _G.heartDeck = {x, x, x, x, x, x, x, x, x, x, x, x, x}
  _G.spadeDeck = {x, x, x, x, x, x, x, x, x, x, x, x, x}
  _G.diamondDeck = {x, x, x, x, x, x, x, x, x, x, x, x, x}
  _G.clubDeck = {x, x, x, x, x, x, x, x, x, x, x, x, x}
 
  gameEnd = false
 
  while (gameEnd == false) do
  print("How many credits would you like to bet? (Current Credits: " .. credits .. ")")  
  bet = io.read("*n")
  while (bet > credits or bet < 1) do
  print("How many credits would you like to bet? (Current Credits: " .. credits .. ")")
  bet = io.read("*n")
  end
 
  dealerTotal = 0
  playerTotal = 0
  dealerAce = 0
  playerAce = 0
 
  temp = io.read("*l")  
  print("\n\n_____________________________")
  --Selecting a card
  drawCard()
  print("Dealer has drawn a " .. _G.tempString2 .. " of " .. _G.tempString)
  print("Dealer has drawn  a " .. _G.tempString2 .. " of " .. _G.tempString)
  if (_G.tempString2 == "Jack" or _G.tempString2 == "Queen" or _G.tempString2 == "King") then
  dealerTotal = dealerTotal + 10
  elseif (_G.tempString2 == "Ace") then
  dealerAce = dealerAce + 1  
  else
  dealerTotal = dealerTotal + _G.tempString2
  end
 
  print("_____________________________\n\n")
 
 
  drawCard()
  print("Player has drawn a " .. _G.tempString2 .. " of " .. _G.tempString)
  if (_G.tempString2 == "Jack" or _G.tempString2 == "Queen" or _G.tempString2 == "King") then
  playerTotal = playerTotal + 10
  elseif (_G.tempString2 == "Ace") then
  playerAce = playerAce + 1  
  else
  playerTotal = playerTotal + _G.tempString2
  end
 
  drawCard()
  print("\nPlayer has drawn a " .. _G.tempString2 .. " of " .. _G.tempString)
  if (_G.tempString2 == "Jack" or _G.tempString2 == "Queen" or _G.tempString2 == "King") then
  playerTotal = playerTotal + 10
  elseif (_G.tempString2 == "Ace") then
  playerAce = playerAce + 1  
  else
  playerTotal = playerTotal + _G.tempString2
  end
 
  tempTotal = calcTotal(playerTotal, playerAce)
 
 
  if (tempTotal == 21) then
    print("Blackjack!")
    elseif (tempTotal > 21) then
       print("Bust!")
      else
          print("\nYour current maximum score is: " .. calcTotal(playerTotal, playerAce) .. " what would you like to do?")
           print("Options: 'stand', 'hit', 'double'")
           
           
           turnEnd = false
           
           userOption = io.read("*l")
           while (userOption ~= "stand" and userOption ~= "hit" and userOption ~= "double") do
            print("*INVALID INPUT* Options: 'stand', 'hit', 'double'")
            userOption = io.read("*l")
            end
           
           
           if(userOption == "stand") then
              turnEnd = true
            end
           if(userOption == "double") then
             if ((bet * 2) < credits) then
              bet = bet * 2
             
              else
                print("Balance too low to double, proceeding with regular hit")
              end
            end
           
           
           while (turnEnd == false) do
             drawCard()
             print("Player has drawn a " .. _G.tempString2 .. " of " .. _G.tempString)
           if (_G.tempString2 == "Jack" or _G.tempString2 == "Queen" or _G.tempString2 == "King") then
                playerTotal = playerTotal + 10
            elseif (_G.tempString2 == "Ace") then
                playerAce = playerAce + 1  
            else
                playerTotal = playerTotal + _G.tempString2
            end
 
                tempTotal = calcTotal(playerTotal, playerAce)
             
             if (tempTotal > 21) then
               print("Bust!")
               turnEnd = true
               else
               
               print("Your current maximum score is: " .. calcTotal(playerTotal, playerAce) .. " what would you like to do?")
           print("Options: 'stand', 'hit'")
               
               userOption = io.read("*l")
           while (userOption ~= "stand" and userOption ~= "hit") do
            print("*INVALID INPUT* Options: 'stand', 'hit'")
            userOption = io.read("*l")
            end
               
               if(userOption == "stand") then
                turnEnd = true
               end
               
             end
             
             
             
             end
           
           
           
           
           
           
        end
   
if (tempTotal > 21) then
  print("Player has busted! You lose " .. bet .. " credits!")
  credits = credits - bet
  else
  print("\n\n_____________________________")
  --Selecting a card
  drawCard()
  print("Dealer has drawn a " .. _G.tempString2 .. " of " .. _G.tempString)
  if (_G.tempString2 == "Jack" or _G.tempString2 == "Queen" or _G.tempString2 == "King") then
  dealerTotal = dealerTotal + 10
  elseif (_G.tempString2 == "Ace") then
  dealerAce = dealerAce + 1  
  else
  dealerTotal = dealerTotal + _G.tempString2
  end
 
   
   
   while ((calcTotal(dealerTotal, dealerAce)) < calcTotal(playerTotal, playerAce)) do
     drawCard()
      print("Dealer has drawn a " .. _G.tempString2 .. " of " .. _G.tempString)
      if (_G.tempString2 == "Jack" or _G.tempString2 == "Queen" or _G.tempString2 == "King") then
      dealerTotal = dealerTotal + 10
      elseif (_G.tempString2 == "Ace") then
      dealerAce = dealerAce + 1  
      else
      dealerTotal = dealerTotal + _G.tempString2
      end
   end
   
   
   print("\n\nDealer Total: " .. calcTotal(dealerTotal, dealerAce))
   print("Player Total: " .. calcTotal(playerTotal, playerAce))  
   
   if (calcTotal(dealerTotal, dealerAce) > calcTotal(playerTotal, playerAce)) then
     if (calcTotal(dealerTotal, dealerAce) > 21) then
       print("Dealer has busted! You win " .. bet .. " credits!")
       credits = credits + bet
       else
         print("Dealer wins! You lose " .. bet .. " credits!")
         credits = credits - bet
       end
     elseif (calcTotal(dealerTotal, dealerAce) < calcTotal(playerTotal, playerAce)) then
       print("You wins! You win " .. bet .. " credits!")
       credits = credits + bet
       
       else
         print("Push!")
       
       end
     
       
     end
   
   
 
 
 
  -- End Control
  if(credits <= 0) then
    print("Out of Credits! Game Over!")
    return(credits)
  end
  
	--R:Moved cash out above shuffle cause why not
  print("Would you like to cash out? (yes/no)")
  exitDiag = io.read("*l")
  while (exitDiag ~= "yes" and exitDiag ~= "no") do
    print("*INVALID INPUT* Would you like to cash out? (yes/no)")
    exitDiag = io.read("*n")
   
  end
 
  if (exitDiag == "yes") then
    gameEnd = true
    return credits
  end
   --Shuffle Control
 
  print("Would you like to shuffle the deck(s)?  (yes/no)")
  print("*This will be done automatically if there is less than 20 cards in play*")
  shuffleDiag = io.read("*l")
  while (shuffleDiag ~= "yes" and shuffleDiag ~= "no") do
    print("*INVALID INPUT* Would you like to shuffle the deck(s) (yes/no)")
    shuffleDiag = io.read("*n")
 
  end
 
  if (shuffleDiag == "yes") then
  _G.heartDeck = {x, x, x, x, x, x, x, x, x, x, x, x, x}
  _G.spadeDeck = {x, x, x, x, x, x, x, x, x, x, x, x, x}
  _G.diamondDeck = {x, x, x, x, x, x, x, x, x, x, x, x, x}
  _G.clubDeck = {x, x, x, x, x, x, x, x, x, x, x, x, x}
  end
 
  if (numOfCards <= 20) then
  _G.heartDeck = {x, x, x, x, x, x, x, x, x, x, x, x, x}
  _G.spadeDeck = {x, x, x, x, x, x, x, x, x, x, x, x, x}
  _G.diamondDeck = {x, x, x, x, x, x, x, x, x, x, x, x, x}
  _G.clubDeck = {x, x, x, x, x, x, x, x, x, x, x, x, x}  
  end
 

   
  end
 
return credits
 
end
 
 
 
function drawCard()
    valid = false
   
  while (valid == false) do
    _G.randDeck = math.random(1,4)
    _G.randCard = math.random(1,13)
  --Checking if the card is valid
 
  if (randDeck == 1) then
    if(_G.heartDeck[randCard] >= 1) then
      valid = true
      _G.heartDeck[randCard] = _G.heartDeck[randCard] - 1
      _G.tempString = "Hearts"
      end
  elseif (randDeck == 2) then  
    if(_G.spadeDeck[randCard] >= 1) then
      valid = true
      _G.spadeDeck[randCard] = _G.spadeDeck[randCard] - 1
      _G.tempString = "Spades"
      end
  elseif (randDeck == 3) then  
    if(_G.diamondDeck[randCard] >= 1) then
      valid = true
      _G.diamondDeck[randCard] = _G.diamondDeck[randCard] - 1
      _G.tempString = "Diamonds"
      end
  elseif (randDeck == 4) then  
    if(_G.clubDeck[randCard] >= 1) then
      valid = true
      _G.clubDeck[randCard] = _G.clubDeck[randCard] - 1
      _G.tempString = "Clubs"
      end
   
  end  
 
  if (_G.randCard == 1) then
    _G.tempString2 = "Ace"
  elseif (_G.randCard == 11) then
    _G.tempString2 = "Jack"
  elseif (_G.randCard == 12) then
    _G.tempString2 = "Queen"
  elseif (_G.randCard == 13) then
    _G.tempString2 = "King"
  else
    _G.tempString2 = _G.randCard
  end
 
  end
 
 
 
 
 
_G.numOfCards = _G.numOfCards - 1;
 
end
 
function calcTotal(score, ace)
totalScore = score
tempTotal = 0
for i = 1, ace do
  tempTotal = totalScore + 11
  if (tempTotal > 21) then
    totalScore = totalScore + 1
    else
      totalScore = totalScore + 11
      end
end
 
if(ace == 0) then
  totalScore = score
end
 
return totalScore  
 
end
 
 
print("Welcome to lua blackjack!")
print("_________________________")
print("How many decks of cards would you like to use? (max 12)")
numOfDecks = io.read("*n")
 
while (numOfDecks > 12 or numOfDecks < 1) do
print("*INVALID INPUT* Enter number of decks (1-12)")
numOfDecks = io.read("*n")
end
 
print("How many credits would you like to play with?")
credits = io.read("*n")
 
while (numOfDecks < 1) do
print("*INVALID INPUT* Enter number of credits (Greater than 1)")
credits = io.read("*n")
end
 
print("Starting...")
 
print("Ending Credits: " .. start(numOfDecks, credits))
