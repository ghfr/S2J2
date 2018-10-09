def trader_du_dimanche

  listeVente = [17,3,5,6,9,15,8,18,6,39,1,10]

  marge = 0
  jourAchat = 0
  jourVente = 0

  for i in (0 .. listeVente.length-1)
    for j in (i .. listeVente.length-1)
      if listeVente[j] - listeVente[i] > marge
        marge = listeVente[j] - listeVente[i]
        jourAchat=i
        jourVente=j
      end
    end
  end

puts "Meilleur marge : Achat le jour #{jourAchat+1} avec vente le jour #{jourVente+1}.
  Prix de vente : #{listeVente[jourVente]} € Prix d'achat : #{listeVente[jourAchat]} €.
   Soit une marge de #{marge} €."

end

trader_du_dimanche
