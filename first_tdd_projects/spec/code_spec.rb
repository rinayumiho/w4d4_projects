require 'code'

describe 'Code' do 
    describe 'my_uniq' do
        it "should accept an array of numbers as argument" do
            my_uniq([1, 2, 1, 3, 3])
        end

        it "should return unique elements in the order they first appear" do 
            expect(my_uniq([1, 2, 1, 3, 3])).to eq([1, 2, 3])
            expect(my_uniq([])).to eq([])
        end
    end

end