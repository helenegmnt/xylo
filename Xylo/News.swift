//
//  News.swift
//  Xylo
//
//  Created by Travail on 31/01/2023.
//

import SwiftUI

struct News: View {
    @State private var backgroundColor: Color = Color("BackgroundBeige")
    // @State var selectedTab : Tabs = .news
    var journal = [
        Article(image: "MangaFilm", titre: "    Makoto Shinkai " ),
        Article(image: "mangaActus", titre: "      Nazuna Saito"),
        Article(image: "wonderWomanPicto", titre: "    Héroines DC"),
        Article(image: "ShazamB", titre: "  Shazam")]
    var body: some View {
        
        ZStack{
            backgroundColor
            NavigationView {
                ZStack {
                    Color("BackgroundBeige").ignoresSafeArea()
                    ScrollView{
                        VStack {
                            Text("Actus")
                            .font(.custom("Hey Comic", size: 40))
                                .padding(.bottom)
                                .frame(height: 70)
                            Image("comicsPhoto")
                                .resizable()
                                .frame(width: 359, height:
                                        200)
                                .cornerRadius(20)
                                .padding()
                            Text("Nouveaux articles")
                                .foregroundColor(Color("Lilac"))
                                .font(.custom("Hey Comic", size: 28))
                                .bold()
                            LazyVGrid(columns: columns, content: {
                                ForEach(journal) { oneArticle in
                                    NavigationLink(destination : DetailsNews1(articles: oneArticle), label: {HelloNews(myArticle: oneArticle)})
                                }
                            }
                            )
                            
                            .listStyle(.plain)
                        }
                    }
                }
            }
            
            .listRowBackground(Color("cBackgroundBeige"))
        }
        .navigationTitle("Actus")
        .listStyle(.plain)
    }
    
}
    

struct Article: Identifiable{
    var id = UUID()
    var image: String
    var titre: String
    
    
}

struct HelloNews: View {
    var myArticle : Article
    var body: some View {
        
        VStack{
              
                Image(myArticle.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 150, height: 150)
                    .padding()
                    
                HStack{
                    Text(myArticle.titre)
                        .font(.title3)
                        .foregroundColor(Color("NewOrange"))
                    Image(systemName: "circle.fill")
                        .foregroundColor(Color("Lilac"))
                        
                }
                .padding(.top, -15.0)
                
        }
    }
}
struct News_Previews: PreviewProvider {
    static var previews: some View {
        News()
    }
}

