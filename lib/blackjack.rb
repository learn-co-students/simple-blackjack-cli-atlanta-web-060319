def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table" #put statement to welcome player
end

def deal_card
  # code  # deal_card
  rand(1..11) #random number from 1 to 11
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}" #statement display card total
  
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"  #statement to ask user input
end

def get_user_input
  # code #get_user_input here
  user_input = gets.chomp   #accepts user input
end

def end_game(card_total)
  # code #end_game here
  
  puts "Sorry, you hit #{card_total}. Thanks for playing!" #end game statment and display card total
end

def initial_round
  # code #initial_round here
  
  sum = deal_card + deal_card  #use the deal_card card method to deal two card and store in var sum
  display_card_total(sum)  # use the display_card_total method to display sum
  return(sum)  # return sum
  
end

def hit?(card_total)
  prompt_user  #prompt_user user
  input = get_user_input  #store user input in var input
  
  if input == "h"       #if statement for when user input "h"
    card_total +=deal_card  #takes the card_total and adds deal card 
    
  elsif input == "s" #if statement for when user input "s"
   card_total       #dispaly card total
 else
   invalid_command  #invalid_command method to display invalid statement to user
   prompt_user     #prompt_user again
  end
end
def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"  #displays to user invaild command was entered
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner
  welcome                  #welcome method called 
  card_total = initial_round  # variable card_total store information from initial_round method
  until card_total > 21    #until loop used to continue loop until card_total > 21
  card_total = hit?(card_total)
  
  display_card_total(card_total)
  end

  end_game(card_total)  #endgame when card total is more than 21
end