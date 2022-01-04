# first comment

# Un palindrome est un mot ou une phrase que l'on peut lire de gauche à droite comme de droite à gauche

# Dans un deuxième temps, nous allons créer nos algorythmes en quelques sorte

=begin
def is_palindrome(word)
    if word.length <= 1
        return true
    elsif word[0] != word [-1]
        return false
    else
        is_palindrome(word[1, word.length-2])
    end
end
=end

# troisième étape, on peut simplifier notre code en notant les conditions en une seule ligne.
# Pour des soucis de lisibilité, je vais mettre la partie non simplifiée du code en commentaire pour en garder la trace

# Dernière étape, en fait il y avait un moyen bcp plus simple de créer un palindrome mdr grace a la fonction reverse

def is_palindrome_easy(word)
    word == word.reverse
end


=begin
def is_palindrome(word)
    return true if word.length <= 1
    return false if word[0] != word [-1]
    is_palindrome(word[1, word.length-2])
end
=end

 





# dans un premier temps, on écrit ce qui sera affiché à l'utilisateur pour qu'il puisse entrer

puts "Palindrome Words"
print "Word: "
word = gets.chomp
puts "Is Palindrome: #{is_palindrome_easy(word)}"


