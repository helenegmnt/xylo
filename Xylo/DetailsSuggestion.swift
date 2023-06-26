//
//  DetailsSuggestion.swift
//  Xylo
//
//  Created by Travail on 31/01/2023.
//



import SwiftUI

struct DetailsSuggestion: View {
    let suggestionDetails: Suggest
    @State private var favorite: Bool = false
        @State private var heartFavorite: String = "heart"
        @State private var textFavorite: String = "Ajouter aux favoris"
    var body: some View {
            
        ZStack{
            Color("BackgroundBeige").edgesIgnoringSafeArea(.top )
            ScrollView {
                VStack{
                    VStack{
                        ZStack{
                            Capsule()
                                .foregroundColor(Color("NewOrange"))
                            Text(suggestionDetails.nameSuggestion)
                                .font(.custom("Hey Comic", size: 28))
                            .foregroundColor(.white)
                        }
                        Text(suggestionDetails.authorSuggestion)
                            .font(.title3)
                            .fontWeight(.bold)
                            
                            
                        Image(suggestionDetails.imageSuggestion)
                            .resizable()
                            .frame(width: 250, height: 310)
                    }
                    VStack(alignment: .leading) {
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
                            Text("Drame")}
                        .font(.title2)
                    }
                    Button(action: { favorite = true
                                            heartFavorite = "heart.fill"
                                            textFavorite = "Ajouté aux favoris"
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
}

struct DetailsSuggestion_Previews: PreviewProvider {
    static var previews: some View {
        DetailsSuggestion(suggestionDetails: Suggest(imageSuggestion: "EnProieAuSilence", nameSuggestion: "En proie au silence 1", authorSuggestion: "Torikai Akane", bookPoint: 20))
    }
}
