require_relative 'mamifero'

class Leon < Mamifero
    def initialize
        super
        @salud = @salud + 20
    end
    
    def volar veces
        @veces = veces
        @salud = @salud - veces * 10
        self
    end
    
    def atacar_ciudad veces
        @veces = veces
        @salud = @salud - veces * 50
        self
    end
    
    def comer_humanos veces
        @veces = veces
        @salud = @salud + veces * 20
        self
    end
    
    def mostrar_salud
        puts "Este es un León"
        super
    end
end

leon = Leon.new.atacar_ciudad(3).comer_humanos(2).volar(2).mostrar_salud