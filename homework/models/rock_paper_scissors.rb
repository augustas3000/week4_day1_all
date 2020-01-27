
class Rps

  def self.compare(arg1, arg2)
    outcomes = {
      'rock'     => { 'rock' => 'tie',   'paper' => 'lose',  'scissors' => 'win'},
      'paper'    => { 'rock' => 'win',   'paper' => 'tie',   'scissors' => 'lose'},
      'scissors' => { 'rock' => 'lose',  'paper' => 'win',   'scissors' => 'tie' }
    }

    if outcomes[arg1][arg2] == 'win'
      return "Player 1 wins by playing #{arg1.capitalize}!"
    elsif outcomes[arg1][arg2] == 'tie'
      return "It's a tie! Both players played #{arg1.capitalize}!"
    else
      return "Player 2 wins by playing #{arg2.capitalize}!"
    end

  end

end
