class Test
    def sumar(n1,n2)
        res=n1+n2
    end
    def calcular_precio_final(cantidad_items, precio_unitario, estado)
        precio_base=calcular_precio_base(cantidad_items,precio_unitario)
        precio_con_descuento=aplicar_descuento(cantidad_items,precio)
    end

    def aplicar_impuesto(estado,precio_con_descuento)
        if estado=='UT'
            impuesto=precio_con_descuento*0.06
            precio=precio_con_descuento+impuesto
        end
    end

    def calcular_precio_base(cantidad_items,precio_unitario)
        precio=cantidad_items*precio_unitario
    end


    def aplicar_descuento(cantidad_items, precio_base)
        if cantidad_items>=1000 and cantidad_items<3000
            descuento=precio_base*0.03
            precio=precio_base-descuento
        else
            if cantidad_items>=3000 and cantidad_items<7000
                descuento=precio_base*0.05
                precio=precio_base-descuento
            else
                if cantidad_items>=7000 and cantidad_items<10000
                    descuento=precio_base*0.07
                    precio=precio_base-descuento
                else
                    if cantidad_items>=10000 and cantidad_items<30000
                        descuento=precio_base*0.10
                        precio=precio_base-descuento
                    else
                        if cantidad_items>=30000 
                            descuento=precio_base*0.15
                            precio=precio_base-descuento
                        else
                            precio=precio_base
                        end
                    end
                end
            end
        end
        precio
    end
end