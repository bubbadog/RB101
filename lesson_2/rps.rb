VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'paper' && second == 'rock')
end

def display_results(player, computer)
  if win?(player, computer)
    'You won!'
  elsif win?(computer, player)
    'Computer won!'
  else
    "It's a tie!"
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt('That is not a valid choice')
    end
  end

  computer_choice = VALID_CHOICES.sample
  puts "You chose: #{choice}, the Computer chose: #{computer_choice}"

  puts display_results(choice, computer_choice)

  prompt("Do you want to play again? Y or N:")
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing!')
