//
//  DetailsNews.swift
//  Xylo
//
//  Created by Travail on 31/01/2023.
//

import SwiftUI

struct DetailsNews1: View {
    @State private var backgroundColor: Color = Color("BackgroundBeige")
    let articles : Article
    var body: some View {
        ZStack{
            Color("BackgroundBeige").edgesIgnoringSafeArea(.top )
            ScrollView{
                VStack{
                    HStack{
                        Spacer()
                        Text("Le film d'animation Suzume de Makoto Shinkai")
                            .font(.custom("Hey Comic", size: 28))
                            .foregroundColor(Color("Lilac"))
                            .multilineTextAlignment(.center)
                        Spacer()
                    }
                    Spacer()
                    Image("ActusFilm")
                        .resizable()
                        .frame(width: 330, height: 200)
                        .padding(20)
                    Spacer()
                    
                    VStack{
                        Text("""
Alors que la sortie du film d'animation Suzume (Suzume no Tojimari) de Makoto Shinkai a été annoncée pour le 12 avril 2023 dans les salles de cinéma en France, en Belgique et au Luxembourg, nous apprenons aujourd'hui via les distributeurs Crunchyroll FR et Eurozoom que le film sera projeté en avant-première à Paris les 27 et 28 février et en présence du réalisateur !
(Source: Nautiljon.com)
""")
                        .font(.title2)
                        
                        .padding()
                        Spacer()}
                }
                .padding()
            }
        }
    }
}


struct DetailsNews_Previews1: PreviewProvider {
    static var previews: some View {
        DetailsNews1(articles: Article(image: "ActusFilm", titre: "Le film d'animation Suzume de Makoto Shinkai"))
    }
}

