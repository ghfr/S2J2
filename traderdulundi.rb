def trader_du_dimanche(table)

  benefice = 0
  date_achat = -1
  date_vente = -1

  # jour d'achat
  for i in(0..(table.length-1))

    # jour de vente
    for j in (i+1..table.length-1)

      if benefice < (table[j] - table[i])

        benefice =  (table[j] - table[i])
        date_achat = i
        date_vente = j
      end
    end
  end

  puts "[#{date_achat},#{date_vente}] \# $#{table[date_vente]} - $#{table[date_achat]} = $#{table[date_vente] - table[date_achat]} "
end


jour_1 = { :GOO => 15, :MMM => 14, :ADBE => 12, :EA=> 13, :BA => 8, :KO => 10, :XOM => 20, :GPS => 7, :MCD => 11, :DIS => 15, :CRM => 6, :JNJ => 10 }
jour_2 = { :GOO => 8, :MMM => 20, :ADBE => 3, :EA=> 10, :BA => 5, :KO => 19, :XOM => 12, :GPS => 6, :MCD => 15, :DIS => 9, :CRM => 10, :JNJ => 17 }
jour_3 = { :GOO => 3, :MMM => 8, :ADBE => 15, :EA=> 5, :BA => 10, :KO => 5, :XOM => 15, :GPS => 13, :MCD => 10, :DIS => 18, :CRM => 5, :JNJ => 14 }
jour_4 = { :GOO => 17, :MMM => 3, :ADBE => 6, :EA=> 9, :BA => 15, :KO => 6, :XOM => 8, :GPS => 1, :MCD => 10, :DIS => 15, :CRM => 18, :JNJ => 3 }
jour_5 = { :GOO => 8, :MMM => 18, :ADBE => 4, :EA=> 6, :BA => 15, :KO => 18, :XOM => 3, :GPS => 12, :MCD => 19, :DIS => 3, :CRM => 7, :JNJ => 9 }
jour_6 = { :GOO => 10, :MMM => 12, :ADBE => 8, :EA=> 3, :BA => 18, :KO => 20, :XOM => 5, :GPS => 11, :MCD => 3, :DIS => 9, :CRM => 8, :JNJ => 15 }
jour_7 = { :GOO => 17, :MMM => 14, :ADBE => 2, :EA=> 17, :BA => 7, :KO => 13, :XOM => 1, :GPS => 15, :MCD => 15, :DIS => 10, :CRM => 9, :JNJ => 17 }

jour = [jour_1,jour_2,jour_3,jour_4,jour_5,jour_6,jour_7]

# pour chaque entreprise, construire son fichier de prix
jour_1.keys.each do |nom_entreprise|

  # construire le fichier de prix
  tableau_prix = []

  for i in(0..6)
    tableau_prix <<= jour[i][nom_entreprise]
  end

  puts "Entreprise : #{nom_entreprise}"
  trader_du_dimanche(tableau_prix)
end
