class Mamifero
    attr_accessor :salud

    def initialize
        @salud = 150
        self
    end

    def mostrar_salud
        puts "La salud del Mamífero es: #{@salud}"
    end
end

perro = Mamifero.new.mostrar_salud