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
        WIN_COMBINATIONS.each do |win_combo|
            if board[win_combo[0]] == board[win_combo[1]] && board[win_combo[1]] == board[win_combo[2]] && position_taken?(win_combo[0])
                return win_combo
            end
        end
        return false
    end
end