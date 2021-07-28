require_relative 'mamifero'


class Perro < Mamifero
    def acariciar (veces)
        @veces = veces
        @salud = @salud + 5 * @veces
        self
    end
    
    def caminar (veces)
        @veces = veces
        @salud = @salud - 1 * @veces
        self
    end
    
    def correr (veces)
        @veces = veces
        @salud = @salud - 10 * @veces
        self
    end
end

perro = Perro.new.caminar(3).correr(2).acariciar(1).mostrar_salud