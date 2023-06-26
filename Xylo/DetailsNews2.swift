//
//  DetailsNews2.swift
//  Xylo
//
//  Created by Travail on 31/01/2023.
//

import SwiftUI

struct DetailsNews2: View {
    @State private var backgroundColor: Color = Color("BackgroundBeige")
    let articles : Article
    var body: some View {
        ZStack{
            Color("BackgroundBeige").edgesIgnoringSafeArea(.top )
            ScrollView{
                VStack{
                    HStack{
                        Spacer()
                        Text("Le manga Au tomber du soleil bientôt aux éditions Atelier Akatombo")
                            .font(.custom("Hey Comic", size: 28))
                            .foregroundColor(Color("Lilac"))
                            .multilineTextAlignment(.center)
                        Spacer()
                    }
                    Spacer()
                    Image(articles.image)
                        .resizable()
                        .frame(width: 330, height: 200)
                        .padding(20)
                    Spacer()
                    
                    
                    Text("""
Les éditions Atelier Akatombo nous annoncent l'arrivée d'un nouveau manga dans leur catalogue : Au tomber du soleil (Yuugure e) de Nazuna Saito.
Recueil d'histoires courtes qui raconte les conflits, les peines, les joies et autres désirs des Hommes soigneusement et délicatement dépeints dans ce manga où la frontière entre le bien et le mal se mélange d'une manière subtile et naturelle.
Sortie prévue le 7 avril 2023 au prix de 13 €.
(Source: Nautiljon.com)
""")
                    .font(.title2)
                    .padding()
                }
                .padding()
            }
        }
    }
}
struct DetailsNews2_Previews: PreviewProvider {
    static var previews: some View {
        DetailsNews2(articles: Article(image: "mangaActus", titre: "Le manga Au tomber du soleil bientôt aux éditions Atelier Akatombo" ))
    }
}

