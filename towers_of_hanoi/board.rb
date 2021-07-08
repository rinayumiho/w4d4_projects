class Board 
    attr_accessor :stack_1, :stack_2, :stack_3
    def initialize
        @stack_1 = [7,6,5,4,3,2,1]
        @stack_2 = []
        @stack_3 = []
    end

    def move(from_stack, to_stack)
        if valid_move?
            to_stack << from_stack.pop
        else
            raise "cannot move there"
        end
    end

    def valid_move?(from_stack, to_stack)
        return false if from_stack.empty?
        current_piece = from_stack[-1]
        (!to_stack.empty? && to_stack[-1] < current_piece) ? false : true
    end

    def won?
        [7,6,5,4,3,2,1].join == @stack_2.join || [7,6,5,4,3,2,1].join == @stack_3.join
    end

end