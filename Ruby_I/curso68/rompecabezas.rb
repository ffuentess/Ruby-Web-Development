=begin
Cree un arreglo con los siguientes valores 3,5,1,2,7,9,8,13,25,32.
Muestre la suma de todos los números del arreglo.
Haz que la función también devuelva un arreglo que incluya solo los números que sean mayores a 10
(ejemplo: cuando pasas el arreglo anterior, debe devolver un arreglo con los valores de 13, 25, 32 - Pista: utilice los métodos reject o find_all.
=end

arreglo = [3,5,1,2,7,9,8,13,25,32]

def oepratoria1(arreglo)
    puts "La suma de todos los valores del arreglo es: #{arreglo.sum}"

    puts "Los numeros del arreglo mayores que 10 son: #{arreglo.find_all {|i| i > 10}}"
end

oepratoria1(arreglo)

=begin
Cree un arreglo con los siguientes valores: John, KB, Oliver, Cory, Matthew, Christopher.
Mezcla el arreglo y muestre el nombre de cada persona.
Haz que el programa devuelva un arreglo con los nombres que tengan una longitud mayor a 5 caracteres.
=end

nombres = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]

puts "arreglo mezclado: #{nombres.shuffle.to_s}"

def nombresMayorque(nombres)
    puts "Los nombres que tienen mas de 5 caracteres son: #{nombres.find_all {|i| i.length > 5}}"
end

nombresMayorque(nombres)

=begin
Cree un arreglo que contenga las 26 letras del alfabeto (este arreglo tiene que tener 26 valores).
Mézclalo y muestre la primera y la última letra del arreglo.
Si la primera letra del arreglo es una vocal, haz que muestre un mensaje.
=end



def getAlfabeto()
    alfabeto = ('a'..'z').to_a
    puts "alfabeto mezclado: #{alfabeto.shuffle!}"

    primera = alfabeto[0]
    ultima = alfabeto[25]
    #puts alfabeto.length
    puts "La primera letra del abecedario es: '#{primera}' y la última es: '#{ultima}'"
    vocales = ['a','e','i','o','u']
    
    for i in vocales
        if primera == i
            puts "La primera letra del arreglo es una vocal! ==> #{i}"
        end
    end
end

getAlfabeto()

=begin
Genere un arreglo con 10 números aleatorios entre 55 - 100.
=end


aleatorios = []

for i in (0..9)
    i = rand(55..101).to_s
    aleatorios.push(i)
end

puts aleatorios.to_s

=begin
Genere un arreglo con 10 números aleatorios entre 55 - 100 y
haz que esté en orden (el número más pequeño en la primera posición).
Muestre todos los números del arreglo. Por último, muestre el valor mínimo y el valor máximo del arreglo.
=end

aleatorios2 = []

for i in (0..9)
    i = rand(55..101).to_s
    aleatorios2.push(i)
end


puts aleatorios2.sort.to_s
puts "Valor mínimo: #{aleatorios2.min}"
puts "Valor máximo: #{aleatorios2.max}"

=begin
Genere una cadena aleatoria de 5 caracteres. (Pista (65+rand(26)).chr devuelve un caracter aleatorio).
=end

stringaleatorio = []

for i in (0..4)
    i = (65+rand(26)).chr
    stringaleatorio.push(i)
end

puts stringaleatorio.to_s

=begin
Genere un arreglo con 10 cadenas aleatorias de 5 caracteres cada una.
=end

arreglocadenas = []


for i in (0..9)
    stringaleatorio = []
    for i in (0..4)
        i = (65+rand(26)).chr
        stringaleatorio.push(i)
    end
    i = stringaleatorio
    arreglocadenas.push(stringaleatorio)
end

puts arreglocadenas.to_s
