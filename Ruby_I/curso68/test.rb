x = [-1, -3, 2]

x.each_with_index do |elemento, index|
    if elemento < 0
        x[index] = "Dojo"
    end
end

puts x.to_s
