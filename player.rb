class Player
  attr_reader :number, :score

  def initialize(number, lives)
    @number = number
    @score = lives
  end

  def update_score
    if @score > 0
      @score -= 1
    end
    @score
  end

end