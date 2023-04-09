# Jonathan Bell
# 2023/04/08
# Tic Tac Toe
# Two player command line style game of X's and O's

## Sets up the game's board and tracks state
class GameBoard
  attr_accessor :board

  def initialize
    self.board = [['~', 'A', 'B', 'C'], ['1', ' ', ' ', ' '], ['2', ' ', ' ', ' '], ['3', ' ', ' ', ' ']]
  end

  def show_board
    line = '--------------------'
    4.times do |i|
      print board[i]
      puts ''
      puts line
    end
  end

  def get_move
    puts 'Please enter your move: '
    coord = gets.chomp
    move = []
    move.push(coord[1].to_i)
    case
    when coord[0] == 'A'
      move.push(1)
    when coord[0] == 'B'
      move.push(2)
    when coord[0] == 'C'
      move.push(3)
    end
    move
  end

  def update_board(player, move)
    symbol = player == 1 ? '0' : "X"
    if board[move[0]][move[1]] == ' '
      board[move[0]][move[1]] = symbol
    else
      puts 'That space is occupied'
      update_board(player, get_move)
    end
  end

  def check_winner
   # 3.times do |i|
    #  3.times do |j|
    #    if board[i][j]
    false
  end

  def play_round
    counter = 1
    loop do
      puts "Round #{counter}\n"
      counter += 1
        2.times do |i|
          update_board(i, get_move)
          show_board
          if check_winner == true
            puts "Player #{i} wins!"
            break
          end
        end
      end
  end

  def game_start
    puts "Each player will take turns placing X's and O's on the board."
    puts 'Please enter your move as a column and row pair, i.e. A1 for the top left space.'
    puts 'Now let the games begin!'
    show_board
  end
end

tictactoe = GameBoard.new
tictactoe.game_start
tictactoe.play_round
