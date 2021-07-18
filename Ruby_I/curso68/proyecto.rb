class Proyecto
=begin
        Crea una clase Proyecto que tenga los siguientes atributos: nombre, descripcion. 
        Además, crea un método de instancia llamado presentacion que muestre el nombre del proyecto 
        y su descripción separados por una coma.
=end
        attr_accessor :nombre, :descripcion
        def initialize(nombre, descripcion)
            @nombre = nombre
            @descripcion = descripcion
        end
        def presentacion
            puts "#{@nombre}, #{@descripcion}"
        end
    end
    proyecto1 = Proyecto.new("Proyecto 1", "Descripción 1")
    proeycto2 = Proyecto.new("Fleteros de Chile", "La plataforma de fletes más grande del país")
    puts proyecto1.nombre # => "Proyecto 1"
    proyecto1.presentacion  # => "Proyecto 1, Descripción 1"

    proeycto2.presentacion
    