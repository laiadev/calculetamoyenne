def test_integer(nbr)
    if(nbr <= 0)
        puts("Merci d'entrer une valeur valide (suppérieur à 0)")
    end
    
end

puts("combien il y a t'il de coef différent")
coef_dif = gets.chomp.to_i 
test_integer(coef_dif)
coef = []

for i in 1..coef_dif
    puts("coef #{i}")
    coef << gets.chomp.to_i
end
moyenne_par_matiere = []
for i in 1..coef_dif
    note_de_la_matiere = []
    puts("combien il y a t'il de note dans la matière pour le coef #{coef[i]}")
    nbr_note_matiere += gets.chomp.to_i
    test_integer(nbr_note_matiere)
    for index in 1..nbr_note_matiere
        puts("donne la note numéro #{index} (attention toute les notes doivent etre /20)")
        note_de_la_matiere << gets.chomp.to_f
    end
    somme_notes = 0.00
    note_de_la_matiere.each do |note|
        puts(note)
        somme_notes += note
    end
    moyenne_par_matiere << (somme_notes/nbr_note_matiere)
end
note_apres_coef = []
sommes_coef = 0
for index in 0..(coef_dif-1)
    note_apres_coef << (coef[index]*moyenne_par_matiere[index])
    sommes_coef += coef[index]
end
somme_notes = 0.00
    note_apres_coef.each do |note|
        somme_notes += note
    end
puts somme_notes / sommes_coef