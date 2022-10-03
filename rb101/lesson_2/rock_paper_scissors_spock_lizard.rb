VALID_CHOICES = {
  r: 'rock',
  p: 'paper',
  sc: 'scissors',
  sp: 'spock',
  l: 'lizard'
}

input = nil
player = nil
computer = nil
computer_score = 0
player_score = 0

def prompt(message)
  puts("=> #{message}")
end

player_win = {
  rock: %w[scissors lizard],
  paper: %w[spock rock],
  scissors: %w[lizard paper],
  spock: %w[rock scissors],
  lizard: %w[spock paper]
}

loop do
  loop do
    loop do
      prompt '''Please choose and option:
      => Rock(r)
      => Paper(p)
      => Scissors(sc)
      => Spock(sp)
      => Lizard(l)'''
      input = gets.chomp
      player = VALID_CHOICES[input.to_sym]

      if VALID_CHOICES.keys.include?(input.to_sym)
        break
      else
        puts 'That was not a valid option...'
      end
    end

    computer = VALID_CHOICES.values.to_a.sample.to_s
    prompt "You chose #{player.to_sym}, and the computer chose #{computer}."

    player_win.each do |key, value|
      next if player.to_sym != key

      if player.to_sym == key && value.include?(computer)
        prompt 'You won!'
        player_score += 1
      elsif player == computer
        prompt "It's a tie!"
      else
        prompt 'You lost!'
        computer_score += 1
      end
    end

    prompt """The score is:
    => Computer: #{computer_score}
    => Player: #{player_score}"""

    if player_score == 3
      prompt 'You won this game!'
      break
    elsif computer_score == 3
      prompt 'The computer won this game!'
      break
    end
  end

  prompt 'Would you like to play again?'
  play_again = gets.chomp

  player_score = 0
  computer_score = 0

  break unless play_again.downcase.start_with?('y')
end
