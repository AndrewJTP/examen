require 'test.rb'


RSpec.describe Test do
    before { @test= Test.new }

    it 'debería devolver 7 la suma de 3 + 4' do
       expect(@test.sumar(3, 4)).to eq(7)
    end
    it 'debería devolver 15, 5 productos que cuestan 3bs' do
        expect(@test.calcular_precio_base(5, 3)).to eq(15)
    end
    it 'debería devolver 20, 5 productos que cuestan 4bs' do
        expect(@test.calcular_precio_base(5, 4)).to eq(20)
    end
end