HANDS = %w(charmander squirtle bulbasaur)

# Pick randomly a hand for the computer
computer_hand = HANDS.sample

player_hand = nil
loop do
  # Ask the (human) player to pick a hand
  puts "Please choose your pokemon (#{HANDS.join(", ")})"
  print "> "
  player_hand = gets.chomp

  # Check if the player hand is valid. If not, ask again until it is.
  if HANDS.include?(player_hand)
    break
  else
    puts "Wrong choice noob..."
  end
end

# Compare both hands! Outcome is Win / Lose / Draw
if computer_hand == player_hand
  puts "You both chose #{computer_hand}, booooring."
else
  if computer_hand == 'charmander'
    player_wins = player_hand == 'squirtle'
  elsif computer_hand == 'squirtle'
    player_wins = player_hand == 'bulbasaur'
  elsif computer_hand == 'bulbasaur'
    player_wins = player_hand == 'charmander'
  end

  # Puts outcome and exit
  if player_wins
    puts "The computer chose #{computer_hand}, you win noone cares..."
  else
    puts "The computer chose #{computer_hand}, computer wins, IN YOUR FACE!"
  end
end
