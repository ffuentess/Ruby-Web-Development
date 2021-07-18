=begin
Cree un método Ruby que revise cada nombre en el arreglo de nombres.
=end

a = {nombre: "Michael", apellido: "Choi"}
b = {nombre: "John", apellido: "Doe"}
c = {nombre: "Jane", apellido: "Doe"}
d = {nombre: "James", apellido: "Smith"}
e = {nombre: "Jennifer", apellido: "Smith"}
nombres = [a, b, c, d, e]


puts "Tienes #{nombres.length} nombres en el arreglo"

=begin
for i in(nombres)
    name = nombres[i].to_s

    puts "El nombre es '#{name}'"
end
=end

nombres.each {|i| puts "El nombre es: #{i[:nombre] + ' ' + i[:apellido]}"}
