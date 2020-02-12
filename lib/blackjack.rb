require 'pry'
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
 gets.chomp
end

def end_game(bust)
  puts "Sorry, you hit #{bust}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  x = deal_card
  y = deal_card
  solution = x + y
   display_card_total(solution)
  return solution
  # code #initial_round here
end
# binding.pry

def hit?(card_total)
#   valid_inputs = ['h', 's', 'exit']
#   # code hit? here
# prompt_user
#  user_input = get_user_input
#  until valid_inputs.include?(user_input)
#   invalid_command
#   prompt_user
#   user_input = get_user_input
#  end
#  if user_input == 'h'
#   card_total += deal_card
#  end
#  return card_total
prompt_user
user_input = get_user_input
if user_input == 'h'
  card_total += deal_card
  return card_total
elsif user_input == 's'
  nil
else invalid_command
  prompt_user
  user_input = get_user_input
end
return card_total
end
# binding.pry

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
    
