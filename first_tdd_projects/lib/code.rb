class Array
    
    def my_uniq
       arr = []
       self.each do |ele|
        arr << ele if !arr.include?(ele)
       end
       arr
    end

    def two_sum 
        array = []
        (0...self.length).each do |i|
            ((i+1)...self.length).each do |j|
                array << [i,j] if self[i] + self[j] == 0
            end
        end
        array
    end

    def stock_picker

    
    end
end