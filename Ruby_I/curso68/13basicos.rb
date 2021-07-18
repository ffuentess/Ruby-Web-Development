#Mostrar 1-255

#1) bucle for
for i in(1..255)
    puts i
end

#2) .each
(1..255).each do |i|
    puts i
end 

#Mostrar números impares entre 1 y 255

puts (1..255).find_all {|i| i % 2 != 0}

#Muestre la suma

suma = 0;
for i in(0..255)
    puts "Nuevo numero #{i}: suma #{suma+=i}"
end

i=1;
suma=0;
while i <= 255 do
    puts "Nuevo numero #{i}: suma #{suma+=i}"
    i+=1
end

#Recorriendo un arreglo

x = [1, 3, 5, 7, 9, 13]
for i in x
    puts i
end

x.each do |i|
    puts i 
end

#Encontrar el máximo

y = [-3, -5, -7]

def max(arr)
    puts "el valor maximo del arreglo es: #{arr.max()}"
end

max(y)

#Promedio
x = [3,2,10]

def prom(x)
    suma = 0
    x.each do |i|
        suma+=i
    end
    puts "el promedio es: #{suma/x.length}"
end

prom(x)

#Arreglo con números impares

def arrimpar()
    a = []
    a.push((0..255).select {|elemento| elemento.odd?})
    puts a.to_s
end

arrimpar()

#Mayor que Y

x = [1, 3, 5, 7]
y = 3

def mayorQueY(x,y)
    puts x.find_all {|i| i > y}.size
end

mayorQueY(x,y)

#Elevar al cuadrado

x = [1, 5, 10, -2]

x.each do |i|
    puts "#{i*i}"
end 

#Eliminar números negativos

x =  [1, 5, 10, -2]

def reemplazar(x)
    x.each_with_index do |elemento, indice|
        if elemento < 0
            x[indice] = 0
        end
    end
    puts x.to_s
end

reemplazar(x)

#Max, Min, y Promedio recorriendo hash

x = [1, 5, 10, -2]

maxMinProm = {"Maximo" => "", "Minimo"=> "", "Promedio" => ""}

maxMinProm["Maximo"] = x.max
maxMinProm["Minimo"] = x.min 
maxMinProm["Promedio"] = x.sum/x.length

puts maxMinProm

#Cambiar los valores en el arreglo

x = [1, 5, 10, 7, -2]

x.delete_at(0)
x.push(0)
puts x.to_s

#Números a cadenas

x = [-1, -3, 2]

x.each_with_index {|elemento, index|
    if elemento < 0
        x[index] = "Dojo"
    end
}

puts x.to_s 
