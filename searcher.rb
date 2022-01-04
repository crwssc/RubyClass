def search(key)
    result = {}
    Dir.glob("*.txt") do |filename|
        f = File.open(filename)
        f.each_with_index do |line, index|
            if line.include?(key)
                result[index+1] = filename
            end
        end
        f.close
    end
    result
end



def find(key)
    result = {}
    Dir.glob("*.txt") do |filename|
        File.foreach(filename).each_with_index do |line, index|
            if line.include?(key)
                result[index+1] = filename
            end
        end
    end
    result
end



puts "Search in Files"
print "Key: "
key = gets.chomp
result = find(key)

if result.length > 0
    for key, value in result
        puts "Filename: #{value} Line Number: #{key}"
    end
else
    puts "Not Found!"
end


# troisième étape, essayer de trouver la ligne du mot que l'on cherche

# quatième étape, on va faire en sorte que si le mot est sur plusieurs lignes qu'il nous les affiche toutes
# pour ça on va utiliser un hash

# cinquième étape, on va améliorer notre code pour éviter la suconsommation de RAM

