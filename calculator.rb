# deuxième étape, on va faire en sorte que le programme puisse effectuer les différentes opérations grâce à la fonction lambda

add = lambda do |num1, num2|
    num1+num2
end
substract = lambda do |num1, num2|
    num1-num2
end
multiply = lambda do |num1, num2|
    num1*num2
end
divide = lambda do |num1, num2|
    num1/num2
end

    # pour que l'on puisse écrire deux nombres ( num1 et num2 ) et qu'on puisse les différencier, on va créer une fonction manager pour gérer tout cela

def manager(function)
    print "Number1: "
    num1 = gets.chomp.to_i
    print "Number2: "
    num2 = gets.chomp.to_i
    result = function.call(num1, num2)
    puts "Result = #{result}".center(50, "-") # center c'est juste pour centrer le résultat à ce que j'ai compris
end

# première étape, on va chercher à écrire ce qu'il y aura d'afficher sur l'écran de notre utilisateur

begin
    puts "Calculator"
    puts "a) Add"
    puts "b) Subtract"
    puts "c) Multiply"
    puts "d) Divide"
    puts "q) Quit"
    print "Select (a/b/c/d/q): "
    choice = gets.chomp
    # troisième étape juste en dessous, en quelques sorte, on va lier nos lettres à nos fonctions lambda créées dans la deuxième étape
    case choice
    when 'a' then manager add
    when 'b' then manager substract
    when 'c' then manager multiply
    when 'd' then manager divide
    end

end while choice != 'q' # cette derniere phrase permet à ce que le programme quitte lorsque l'on appuie sur q

# Le programme est terminé et fonctionne

