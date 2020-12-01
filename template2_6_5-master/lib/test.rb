class Test
    def sumar(n1,n2)
        res=n1+n2
    end
    #def calcular_precio_final(cantidad_items, precio_unitario, estado)
    #end
    def calcular_precio_base(cantidad_items,precio_unitario)
        precio=cantidad_items*precio_unitario
    end


    def aplicar_descuento(cantidad_items, precio_base)
        if cantidad_items>=1000 and cantidad_items<3000
            descuento=precio_base*0.03
            precio=precio_base-descuento
        else
            precio=precio_base
        end
        precio
    end
end