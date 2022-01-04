puts "Company Email Generator"
print "Name: "
name = gets.chomp
print "Lastname: "
lastname = gets.chomp
print "Company: "
company = gets.chomp

#il y a deux façons de procéder soit comme fait au-dessus, soit comme en-dessous

=begin

email = name + "." + lastname + "@" + company + ".com"

email = ""
email << name.downcase
email << "."
email << lastname.downcase
email << "@"
email << company.downcase
email << ".com"

puts email

=end

# En executant le programme, on se rend compte que lorsque le nom comporte un espace, l'espace est présent dans le mail ce qui invalide l'adresse mail.

=begin

email = ""
email << name.downcase.split.join(".")
email << "."
email << lastname.downcase.split.join(".")
email << "@"
email << company.downcase
email << ".com"

=end

# Maintenant, si c'était le nom de la compagnie qui comportait des espaces, la façon de procéder n'est pas la même. Comme il ne peut y avoir qu'un seul point après le @, on n'ajoute rien à join

email = ""
email << name.downcase.split.join(".")
email << "."
email << lastname.downcase.split.join(".")
email << "@"
email << company.downcase.split.join
email << ".com"

puts email

