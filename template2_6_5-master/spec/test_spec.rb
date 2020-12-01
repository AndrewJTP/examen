require 'test.rb'


RSpec.describe Test do
    before { @test= Test.new }

    it 'debería devolver 7 la suma de 3 + 4' do
       expect(@test.sumar(3, 4)).to eq(7)
    end

end