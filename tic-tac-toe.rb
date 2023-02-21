require 'pry'

class TicTacToe
    attr_reader :board

    WIN_COMBINATIONS = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8],
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        [0, 4, 8],
        [2, 4, 6],
    ]

    def initialize
        @board = Array.new(9, " ")
    end

    def display_board
        puts " #{board[0]} | #{board[1]} | #{board[2]} "
        puts "-----------"
        puts " #{board[3]} | #{board[4]} | #{board[5]} "
        puts "-----------"
        puts " #{board[6]} | #{board[7]} | #{board[8]} "
    end

    def input_to_index(input)
        input.to_i - 1
    end

    def move(index, token)
        board[index] = token
    end

    def position_taken?(index)
        board[index] != " " 
    end

    def valid_move?(index)
        index.between?(0, 8) && !position_taken?(index)
    end

    def turn_count
        # board.count {|square| square != " "}
        (board - [" "]).length 
        # this involves no iteration and is the most cost effective
    end

    def current_player
        turn_count.odd? ? "O" : "X"
    end

    def turn 
        user_input = gets.strip 
        user_index = input_to_index(user_input)
        valid_move?(user_index) ? move(user_index, current_player) : turn
        display_board
    end

    def won?
        WIN_COMBINATIONS.detect do |win_combo|
            board[win_combo[0]] == board[win_combo[1]] && board[win_combo[1]] == board[win_combo[2]] && position_taken?(win_combo[0])
            # detect already knows that what is inside is a conditional so you can remove if statement
            # if condition is met it will return what is in the pipes
            # if condition is no met it will return nil which is a falsey value
        end
    end

    def full?
        turn_count == 9
        # board.all? {|space| space != " "} also works
    end

    def draw?
        !won? && full?
    end

    def over?
        draw? || won?
    end

    def winner
        if wining_combo = won?
            board[wining_combo[0]]
        end
    end

    def play 
        until over? do 
            turn
        end
        if won?
            puts "Congratulations #{winner}!"
        else draw?
            puts "Cat's Game!"
        end
    end
end