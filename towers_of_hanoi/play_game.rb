require_relative 'board'
puts "Welcome to play Hanoi"
puts "Please choose how many discs do you want?"
num = gets.chomp.to_i
until num > 2
    puts "Number of discs must be greater than 2, please re-enter: "
    num = gets.chomp.to_i
end
puts " "
board = Board.new(num)

until board.won?
    board.print_board
    puts "Please choose your from_stack postion (0, 1, 2), and to_stack postion(0, 1, 2)"
    puts "Example: 1, 3"
    position = gets.chomp.split.map { |ele| ele.to_i }
    board.move(position)
    puts " "
end

puts "Congratulations, you win"
board.print_board