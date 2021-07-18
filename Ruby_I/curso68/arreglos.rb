$array = [1,2,3,4,5,"Martes","Jueves"]
$array2 = [3,1,67,5,3,8,9]

def separador()
    puts "Array despues del metodo: "
    puts $array.to_s
    puts "---------------------- * ---------------------------"
end

puts "Metodo .at()"
puts $array.at(5)
separador()

puts "Metodo .fetch()"
puts $array.fetch(2)
separador()

puts "Metodo .delete()"
$array.delete(5)
separador()

puts "Metodo .reverse()"
puts $array.reverse().to_s

puts "Metodo .length()"
puts $array.length()

puts "Metodo .sort()"
puts $array2.sort().to_s

#puts "Metodo .slice()"
#puts ************

puts "Metodo .shuffle()"
puts $array2.shuffle.to_s

puts "Metodo .join()"
puts $array.join(" $ ").to_s

puts "Metodo .insert()"
puts $array.insert(7, "Ñengo Flow")

puts "Metodo .values_At()"
puts $array.values_at(0,2,5,6,7)