//
//  DetailsGenre.swift
//  Xylo
//
//  Created by Travail on 31/01/2023.
//

import SwiftUI

struct DetailsGenre: View {
@State private var backGound: Color = Color("BackgroundBeige")
    let detailsGenre = [
        LibraryGenre(titleGenre: "One Piece", imageGenre: "OP", authorGenre: "Eichiro Oda", synopsisGenre:"L'histoire suit principalement l'équipage de Chapeau de paille, mené par son capitaine Monkey D. Luffy, un jeune homme ayant mangé, enfant, sans le savoir le fruit du Gum Gum qui lui permet d'étirer ses membres, et dont le rêve est de devenir le Roi des pirates."),
        LibraryGenre(titleGenre: "The gamer", imageGenre: "TG", authorGenre: "Sung Sang-Young", synopsisGenre: "Han Jee-Han est un lycéen normal ayant développé une capacité spéciale qui lui permet de vivre comme si le monde autour de lui était un jeu, appelé «The Gamer». Il remarque qu'en augmentant son niveau, il peut augmenter ses statistiques et améliorer son corps et son esprit, entre autres choses."),
        LibraryGenre(titleGenre: "Mashle", imageGenre: "Mashle", authorGenre: "Hajime Komoto", synopsisGenre: "Dans un monde où la magie fait loi, il était une fois Mash Burnedead ! Élevé au fin fond de la forêt, le jeune garçon partage ses journées entre séances de musculation et dégustation de choux à la crème. Mais un jour, un agent de police découvre son secret : il est né sans pouvoirs magiques, ce qui est puni de mort ! Pour survivre, il va devoir postuler à Easton, une prestigieuse académie de magie, et en devenir le meilleur élève... La magie n’a plus qu’à bien se tenir : avec sa musculature affûtée et sa force hors du commun, Mash compte bien pulvériser tous les sorts et briser les codes de cette société !"),
        LibraryGenre(titleGenre: "Shin shan", imageGenre: "SS", authorGenre: "Yoshito Usui", synopsisGenre: "La série suit les aventures d'un petit garçon de cinq ans du nom de Shinnosuke Nohara (surnommé Shin-chan) et de sa famille, ses voisins, ses amis et son entourage à Kasukabe, préfecture de Saitama, au Japon."),
        LibraryGenre(titleGenre: "Naruto", imageGenre: "Naruto", authorGenre: "Masashi Kishimoto", synopsisGenre: "Naruto est un garçon qui vit dans le village de Konoah. Il rêve de devenir Hokage (un grand chef qui protège son village et qui est très puissant). Mais il est détesté de tout le monde, car il a un démon scellé en lui: le démon renard à neuf queues (Kyubi). Ce démon a été enfermé en lui par le quatrième Hokage pour protéger son village. Puis, petit à petit, il va se faire des amis, jusqu’à devenir le héros de son village."),
        LibraryGenre(titleGenre: "One Punch Man", imageGenre: "OnePunchMan", authorGenre: "ONE", synopsisGenre: "Saitama est un jeune homme sans emploi et sans réelle perspective d'avenir, jusqu'au jour où il décide de prendre sa vie en main. Son nouvel objectif : devenir un super-héros. Il s'entraîne alors sans relâche pendant trois ans et devient si puissant qu'il est capable d'éliminer ses adversaires d'un seul coup de poing.")]
    
    let screenName: LibraryList
    
    var body: some View {
        ZStack {
            Color("BackgroundBeige").ignoresSafeArea()
            VStack {
                
                HStack {
                    Text(screenName.libraryIconName)
                        .font(.custom("Hey Comic", size: 34))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                    Spacer()
                }
                .padding()
                List (detailsGenre) {
                    aGenre in
                    NavigationLink(destination: DetailsLibrary(libraryDetails: aGenre), label :{
                      GenreRow(genre: aGenre)})
                    .listRowBackground(Color("BackgroundBeige"))
                }
                .listStyle(.plain)
               
            }
        }
    }
}
struct DetailsGenre_Previews: PreviewProvider {
    static var previews: some View {
        DetailsGenre(screenName: LibraryList(libraryIconImage: "totototo", libraryIconName: "Nom du genre") )
    }
}

struct LibraryGenre: Identifiable {
    var id = UUID()
    var titleGenre: String
    var imageGenre: String
    var authorGenre: String
    var synopsisGenre: String
}
struct GenreRow: View {
    
    var genre: LibraryGenre
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {Text(genre.titleGenre)
                    .font(.custom("Hey Comic", size: 28))
                    .font(.title)
                Text(genre.synopsisGenre)
                    .lineLimit(3)
                    .font(.callout)
                    .fontWeight(.light)
                    .padding(.leading, 15.0)
            }
                Spacer()
            Image(genre.imageGenre)
                .resizable()
                .frame(width: 75, height: 100)
        }
    }
}

