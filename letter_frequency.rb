# test 1 2





def letter_frequency(text)
    chars = ('a'..'z').to_a + ('A'..'Z').to_a
    frequency = {}
    text.each_char do |char|
        if chars.include?(char)
            unless frequency.key?(char)
                frequency[char] = 1
            else
                frequency[char] += 1
            end
        end
    end
    return frequency
end


# première étape, on fait ce qu'il sera afficher pour l'utilisateur

puts "Letter Frequency"
print "Text: "
text = gets.chomp
result = letter_frequency(text)
# troisième étape, on peut améliorer notre code, (l'affichage)
for key, value in result
    puts "#{key} => #{value}"
end

