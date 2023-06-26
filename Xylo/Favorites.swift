//
//  Favorites.swift
//  Xylo
//
//  Created by Travail on 31/01/2023.
//

import SwiftUI

struct Favoris: Identifiable {
    var id = UUID()
    var image: String
    var name: String
    var author: String
//    var favoris: Bool = false
}
//pour faire le nombre de colonnes (2)
let columns = [
    GridItem(),
    GridItem()
]
struct Favorites: View {
   
//Base de données à afficher dans la grille
//@State private var backgroundColor: Color = Color("BackgroundBeige")
    var favorisBox = [
        Favoris(image: "EnProieAuSilence",name: "   En Proie Au Silence 1",author:"Torikai Akane"),
        Favoris(image: "monster",name: "Monster 1",author:"Urasawa Naoki"),
        Favoris(image: "WonderWoman",name: "Wonder Woman",author:"Brian Azzarello"),
        Favoris(image: "LockeAndKey",name: "Locke & Key",author:"Joe Hill"),
        Favoris(image: "Elles",name: "Elles 1",author:"Kid Toussain"),
        Favoris(image: "culottees",name: "Les culottées",author:"Pénélope Bagieu")
    ]
    
    var body: some View {
//   Navigation
        NavigationView{
            ZStack{
                Color("BackgroundBeige").edgesIgnoringSafeArea(.top)
             
                    VStack{
                        Text("Favoris")
                            .font(.custom("Hey Comic", size: 40))
                            .padding(.bottom)
                            .frame(height: 70)
                        
                        //    Bouton Favoris
                        ZStack {
                            NavigationLink(destination: QuizStart()){
                                Text("Repasser le Quiz")
                                    .font(.custom("Hey Comic", size: 17))
                                    .padding()
                                    .background(.orange)
                                    .cornerRadius(20)
                                    .foregroundColor(.black)
                                    .padding()
                                    .frame(height: 100)
                            }
                        }
                        ScrollView {
                            LazyVGrid(columns: columns, content: {
                                ForEach (favorisBox) { favor in
                                    NavigationLink(destination: DetailsFavorites(favDetails: favor), label: {FavoritesRow(favoris: favor)})
                                    
                                }
                                
                            }
                            ) }
                    
                }
                
            }
        }
    }
}

struct FavoritesRow: View {
    var favoris: Favoris

    var body: some View {
        VStack{
            Image(favoris.image)
                .resizable()
                .frame(width: 80, height: 110)
            VStack{
                HStack{
                    Text(favoris.name)
                        .foregroundColor(.black)
                        .font(.title3)
                        .frame(height: 15)
                        .bold()
                   
                    
                }
                Text(favoris.author)
                    .foregroundColor(.black)
                    .frame(height: 23)
                Spacer()
                Spacer()
                Spacer()
            }
        }
    }
}


struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        Favorites()
        
    }
}

