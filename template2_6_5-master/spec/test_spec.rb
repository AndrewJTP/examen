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
    it 'debería devolver 3880, 1000 productos que cuestan 4bs' do
        precio_base=@test.calcular_precio_base(1000,4)
        expect(@test.aplicar_descuento(1000, precio_base)).to eq(3880)
    end
    it 'debería devolver 400, 100 productos que cuestan 4bs' do
        precio_base=@test.calcular_precio_base(100,4)
        expect(@test.aplicar_descuento(100, precio_base)).to eq(400)
    end
    it 'debería devolver 11780, 3100 productos que cuestan 4bs' do
        precio_base=@test.calcular_precio_base(3100,4)
        expect(@test.aplicar_descuento(3100, precio_base)).to eq(11780)
    end
    it 'debería devolver 13020, 7000 productos que cuestan 2bs' do
        precio_base=@test.calcular_precio_base(7000,2)
        expect(@test.aplicar_descuento(7000, precio_base)).to eq(13020)
    end
end