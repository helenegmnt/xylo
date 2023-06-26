//
//  DetailsFavorites.swift
//  Xylo
//
//  Created by Travail on 31/01/2023.
//

import SwiftUI

struct DetailsFavorites: View {
    let favDetails: Favoris
    @State private var favorite: Bool = false
    @State private var heartFavorite: String = "heart.fill"
    @State private var textFavorite: String = "Retirer des favoris"
    var body: some View {
        
        ZStack{
        Color("BackgroundBeige").edgesIgnoringSafeArea(.top)
            ScrollView {
                VStack{
                    VStack{
                        ZStack{
                            Capsule()
                                .foregroundColor(Color("NewOrange"))
                            
                            Text(favDetails.name)
                                .font(.custom("Hey Comic", size: 28))
                                .foregroundColor(.white)
                        }
                        .padding(.top, 0.0)
                        Text(favDetails.author)
                            .font(.title3)
                            .fontWeight(.bold)
                            
                        Image(favDetails.image)
                            .resizable()
                            .frame(width: 250, height: 330)
                    }
                    
                    HStack{
                        Text("Sortie:")
                            .font(.title2)
                            .foregroundColor(Color("Lilac"))
                        Text("2020")
                            .font(.title2)
                    }
                    HStack{
                        Text("Genre:")
                            .font(.title2)
                            .foregroundColor(Color("Lilac"))
                        Text("Aventure")
                        .font(.title2)}
    Button(action: { favorite = true
    heartFavorite = "heart"
    textFavorite = "Ajouter aux favoris"
                                        }
    , label: {
    HStack {Image(systemName: heartFavorite)
    .foregroundColor(.black)
    .font(.title2)
    Text(textFavorite)
    .foregroundColor(.black)
    .font(.title2)
                                            }

                                        })
                                        .padding(.top, 2.0)

                    Divider()
                    HStack{
                        Text("Résumé:")
                            .font(.title2)
                            .foregroundColor(Color("Lilac"))
                        Spacer()
                    }
                    
                    Text("Misuzu exerce ce que certains appellent le plus beau métier du monde... Mais entre le désintérêt de ses élèves et surtout la blessure qu’elle porte en elle, la jeune femme essaie tant bien que mal de mener son existence, la tête haute. Hélas, quand Minako, sa meilleure amie, lui annonce ses fiançailles avec Hayafuji, son petit ami de longue date, le quotidien de cette professeure vacille pour atteindre, peut-être, un point de non-retour. Pourra-t-elle trouver son équilibre dans une société si foncièrement inégale et injuste ?")
                        .font(.title3)
                }
                .padding()
            }
        }
    }
    //}
    
    struct DetailsFavorites_Previews: PreviewProvider {
        static var previews: some View {
            DetailsFavorites(favDetails: Favoris(image: "EnProieAuSilence", name:"En Proie Au Silence 1", author: "Torikai Akane"))
        }
    }
}

