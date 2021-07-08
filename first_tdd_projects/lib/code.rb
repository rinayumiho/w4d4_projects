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
        min = self[0]
        min_idx = 0
        max_profit = 0
        res = [0, 0]
        (1...self.length).each do |i|
            cur_profit = [self[i] - min, 0].max;
            if cur_profit > max_profit
                max_profit = cur_profit
                res = [min_idx, i]
            end
            if self[i] < min
                min = self[i]
                min_idx = i
            end
        end
        res
    end

    

    
end



def my_transpose(arr)
    # matrix = []
    # (0...arr.length).each do |i|
    #     subarray = []
    #     arr.each do |array|
    #         subarray << array[i]
    #     end
    #     matrix << subarray
    # end


    # matrix
    r, c = arr.length, arr[0].length
    mat = Array.new(c) { Array.new(r) }
    (0...r).each do |i|
        (0...c).each do |j|
            mat[j][i] = arr[i][j]
        end
    end
    mat
end

# def stock_picker(arr)
#     min = arr[0]
#     min_idx = 0
#     max_profit = 0
#     res = [0, 0]
#     (1...arr.length).each do |i|
#         cur_profit = [arr[i] - min, 0].max;
#         if cur_profit > max_profit
#             max_profit = cur_profit
#             res = [min_idx, i]
#         end
#         if arr[i] < min
#             min = arr[i]
#             min_idx = i
#         end
#     end
#     res
# end

# p stock_picker([9,1,8,5,7,3])
# p stock_picker([1,5,8,7,3,9])
# p my_transpose([1,2,3])