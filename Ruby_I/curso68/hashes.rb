hash = {:nombre => "Coding", :apellido => "Dojo", :ciudad => "Osorno", :pais => "Chile", :region => "Los Lagos"}


#Método delete(:clave)
hash.delete(:ciudad)

puts hash

#Método .empty?
puts hash.empty?

#Método .has_key?(:clave)
puts hash.has_key?(:apellido)

#Método .has_value?(valor)
puts hash.has_value?("Dojo")