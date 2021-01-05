class Game
  NUMBER_OF_LIVES = 3

  def initialize
    @player_1 = Player.new(1, NUMBER_OF_LIVES)
    @player_2 = Player.new(2, NUMBER_OF_LIVES)
    @current_player = @player_1
    @question = Question.new
  end

  def display_question
    @question.generate_question
    puts "Player #{@current_player.number}: #{@question.question}"
  end

  def evaluate_answer
    print "> "
    player_answer = gets.chomp.to_i
    player_answer == @question.answer
  end

  def correct_answer
    puts "Player #{@current_player.number}: YES! You are correct."
  end

  def incorrect_answer
    puts "Player #{@current_player.number}: Seriously? No!"
  end
  
  def switch_player
    @current_player = @current_player == @player_1 ? @player_2 : @player_1
  end

  def next_turn
    puts "P1: #{@player_1.score}/#{NUMBER_OF_LIVES} vs P2: #{@player_2.score}/#{NUMBER_OF_LIVES}"
    if @player_1.score > 0 && @player_2.score > 0
      puts "----- NEW TURN -----"
    end
  end

  def game_over(winner)
    puts "Player #{winner.number} wins with a score of #{winner.score}/#{NUMBER_OF_LIVES}"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

  def start
    while @player_1.score > 0 && @player_2.score > 0 do
      self.display_question
      if self.evaluate_answer
        self.correct_answer
        next_turn
        switch_player
      else
        self.incorrect_answer
        @current_player.update_score
        next_turn
        switch_player
      end
    end
    self.game_over(@current_player)
  end
end
