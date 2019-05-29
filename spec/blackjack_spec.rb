def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
rand(1..11)
end
card = deal_card

def display_card_total(card)
  puts "Your cards add up to #{card}."
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay."
end

def get_user_input
  answer = gets.chomp
end

def end_game(card_total)
  puts  "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  2.times  do
  deal_card
  end
  display_card_total
end

def hit?(current_total)
  prompt_user
  get_user_input
  if gets.chomp == "h"
    deal_card
  else
    end
  display_card_total
end

def invalid_command
  puts "Please enter a valid command"
end


#describe "#runner" do

#  before(:each) do
#    def get_user_input
#      "h"
#    end
#  end

#  it "calls on the #welcome method,
#  then on the #initial_round method,
#  then calls #hit? and #display_card_total methods
#  -until- the card sum is greater than 21,
# then calls on the #end_game method" do

#    expect(self).to receive(:deal_card).at_least(3).times.and_return(10)
#    expect(self).to receive(:get_user_input).and_return("h")

#    expect($stdout).to receive(:puts).with("Welcome to the Blackjack Table")
  #  expect($stdout).to receive(:puts).with("Your cards add up to 20")
#    expect($stdout).to receive(:puts).with("Type 'h' to hit or 's' to stay")
  #  expect($stdout).to receive(:puts).with("Your cards add up to 30")
  #  expect($stdout).to receive(:puts).with("Sorry, you hit 30. Thanks for playing!")
  #  runner
  #end
#end
