require 'code'

describe 'Array' do 
    describe '#my_uniq' do
        it "should return unique elements in the order they first appear" do 
            expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
            expect([].my_uniq).to eq([])
        end
    end

    describe "#two_sum" do 
        it "should return all pairs of positions that sum to zero" do
            expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
            expect([].two_sum).to eq([])
            expect([-1, -1, 1, 1].two_sum).to eq([[0,2], [0,3], [1,2], [1,3]])
        end

        it "should be sorted smaller index before bigger index" do
            expect([-1, 0, 2, -2, 1].two_sum).not_to eq([[2, 3],[0, 4]])
        end        
    end

    

    describe "#stock_picker" do
        it "should return the most profitable pair of days to buy and sell" do
            array = [9,1,8,5,7,3]
            expect_result = [1, 2]
            expect(array.stock_picker).to eq(expect_result)
        end

    end


end

describe "Code" do
    describe "my_transpose" do
    
        it "should store matrix as an array of column" do
            rows = [[0, 1, 2], 
                    [3, 4, 5],
                    [6, 7, 8]]
    
            cols = [[0, 3, 6],
                    [1, 4, 7],
                    [2, 5, 8]]
    
            expect(my_transpose(rows)).to eq(cols)
        end
    end

end
