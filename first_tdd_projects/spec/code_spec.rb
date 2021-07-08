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


end