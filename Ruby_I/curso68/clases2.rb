=begin
class Usuario
    attr_accessor :nombre, :apellido
end
kobe = Usuario.new
kobe.nombre = "Kobe"
kobe.apellido = "Bryant"
=end


class User
    attr_accessor :nombre, :apellido

    #metodo constructor initialize
    def initialize(nombre, apellido)
        @nombre = nombre
        @apellido = apellido
    end

    def nombre_completo
        puts "Yo soy #{@nombre} #{@apellido}"
    end
    
    def saludar
        puts "¡Hola!"
        User.foo #acceder a los metodos privados de la clase
    end
    def self.foo
        puts "Este es un metodo de clase"
    end
end
steph = User.new("Stephen", "Curry") #instancia de la clase

puts steph.inspect

jordan = User.new("","")
jordan.nombre = "Michael"
jordan.apellido = "Jordan"


puts steph.saludar
puts jordan.nombre
puts jordan.apellido

