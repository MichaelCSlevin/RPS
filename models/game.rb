class Game

  def initialize(hand_1, hand_2)
  @hand_1 = hand_1
  @hand_2 = hand_2
  end

  def compare
    if @hand_1 == @hand_2
      return "Draw, pardner!"
    elsif (@hand_1 == "rock" and @hand_2 == "paper")
      # or (@hand_1 = "paper" and @hand_2 == "rock")
      return "📜 wins, friend!"
    elsif (@hand_1 == "rock" and @hand_2 == "scissors")
      # or (@hand_1 == "scissors" and @hand_2 == "rock")
      return "🗿 wins, pal!"
    else return "✂️ wins, amigo!"
    end
  end

end

puts Game.new('rock', 'scissors').compare
