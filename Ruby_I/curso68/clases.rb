class Usuario

=begin
    #@nombre
    #crear una funcion/metodo para asignar valores
    #Asignar el valor a un atributo SETTERS!
    def nombre=(val)
        @nombre = val
    end

    #GETTER, retorna el valor de un atributo
    def nombre
        return @nombre
    end

    def apellido=(val)
        @apellido = val
    end

    #GETTER, retorna el valor de un atributo
    def apellido
        return @apellido
    end
=end

    #lo mismo que las lineas de codigo anterior se resumen a las 2 siguientes
    attr_accessor :nombre #getter y setters juntos en una sola linea
    attr_accessor :apellido

    #las lineas anteriores pueden ser resumidas en la siguiente linea de codigo
    attr_accessor :nombre, :apellido 
end


#instancia de una clase
usuario1 = Usuario.new
usuario2 = Usuario.new


#Acá estamos llamando al método .nombre de la calse Usuario, no al atributo. Así no se accede al atributo 
usuario1.nombre = "Matz"
usuario1.apellido = "Palma"
#asi NO se consulta los datos de los metodos
#puts usuario1.nombre

puts usuario1.inspect
puts usuario1.nombre
puts usuario1.apellido