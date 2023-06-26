//
//  DetailsLibrary.swift
//  Xylo
//
//  Created by Travail on 31/01/2023.
//

import SwiftUI

struct DetailsLibrary: View {
    let libraryDetails: LibraryGenre
    @State private var favorite: Bool = false
    @State private var heartFavorite: String = "heart"
    @State private var textFavorite: String = "Ajouter aux favoris"
    var body: some View {
        
        ZStack{
        Color("BackgroundBeige").edgesIgnoringSafeArea(.top )
            VStack{
                ScrollView {
                VStack{
                    ZStack{
                        Capsule()
                            .foregroundColor(Color("NewOrange"))
                            Text(libraryDetails.titleGenre)
                        .font(.custom("Hey Comic", size: 28))}
                    .padding(.top, 0.0)
                    .foregroundColor(.white)
                    Text(libraryDetails.authorGenre)
                        .font(.title3)
                        .fontWeight(.bold)
                                            
                    Image(libraryDetails.imageGenre)
                        .resizable()
                        .frame(width: 250, height: 310)
                }
                
                    VStack(alignment: .leading) {
                       
                        HStack{
                            Text("Sortie :")
                                .font(.title2)
                                .foregroundColor(Color("Lilac"))
                            Text("1995")
                                .font(.title2)
                        }
                        HStack{
                            Text("Genre:")
                                .font(.title2)
                                .foregroundColor(Color("Lilac"))
                            Text("Crime")}
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
                Text("Un jeune médecin promis aux honneurs voit sa carrière et sa vie brisées après avoir choisi de soigner deux enfants plutôt que le maire de la ville. Autour de l'un des enfants, les morts s'enchaînent alors de manière inexplicable. Et s'il avait sauvé un monstre ?")
                .font(.title3)
            }
            }
            .padding()
            
        }
    }
    
    
    struct DetailsLibrary_Previews: PreviewProvider {
        static var previews: some View {
            DetailsLibrary(libraryDetails: LibraryGenre(titleGenre: "Monster 1", imageGenre: "monster", authorGenre: "Urasawa Naoki", synopsisGenre: "Un jeune médecin promis aux honneurs voit sa carrière et sa vie brisées après avoir choisi de soigner deux enfants plutôt que le maire de la ville. Autour de l'un des enfants, les morts s'enchaînent alors de manière inexplicable. Et s'il avait sauvé un monstre ?" ))
        }
    }
}

