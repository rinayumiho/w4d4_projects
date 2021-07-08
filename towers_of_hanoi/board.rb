class Board 
    attr_accessor :stack_1, :stack_2, :stack_3, :target, :grid
    def initialize(n = 3)
        @stack_1 = (1..n).to_a.reverse
        @target = @stack_1.join
        @stack_2 = []
        @stack_3 = []
        @grid = [@stack_1, @stack_2, @stack_3]
    end

    def move(position)
        from_stack, to_stack = position
        if valid_move?(from_stack, to_stack)
            @grid[to_stack] << @grid[from_stack].pop
        else
            raise "cannot move there"
        end
    end

    def valid_move?(from_stack, to_stack)
        return false if @grid[from_stack].empty? || from_stack == to_stack
        current_piece = @grid[from_stack][-1]
        (!@grid[to_stack].empty? && @grid[to_stack][-1] < current_piece) ? false : true
    end

    def won?
        @target == @stack_2.join || @target == @stack_3.join
    end

    def print_board
        @grid.each { |stack| puts stack.join(" ") }
    end
end