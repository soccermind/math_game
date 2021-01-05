# TwO-O-Player Math Game - Planning

## Classes
### Game
- Description: creates 2 player instances (1 and 2), defines current_player, defines number of lives (constant value of 3), manages loop to create a new turn after the current turn completes, displays question, and captures and evaluates answer.
- Methods: 
  - initialize: player_1, player_2 (instances of Player class), current_player (player_1.number)
  - display_question: call Question class generate_question method and display question.
  - evaluate_answer: collect answer from user input and evaluate result (true if correct, false if incorrect). 
  - correct_answer: display correct message.
  - incorrect_answer: display incorrect message, call player.update_score.
  - switch_player: change current_player to the other one after each turn.
  - next_turn: displays scores and "new turn" message after each turn. 
  - game_over: displays winning player number and score, and "game over" message.
  - start: manages turns in a loop until a player runs out of lifes.

### Player
- Description: identifies instance by number (player 1, player 2, etc) and keeps the score (lives) in an instance variable.
- Methods
  - initialize: set player number (1 or 2) and score (3 lives).
  - update_score: decrease 1 life from score.

### Question
- Description: generates two random numbers (number_1 and number_2) between 1 and 20, creates question with those 2 numbers and calculates answer by adding them together. 
- Method:
  - generate_question: creates question using number_1 and number_2 and calculates answer as number_1 + number_2


  

