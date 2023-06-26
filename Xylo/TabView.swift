//
//  TabViewExemple.swift
//  Xylo
//
//  Created by Apprenant 66 on 02/02/2023.
//

import SwiftUI

struct TabViewExemple: View {
    var body: some View {
        TabView {
                QuizStart()
                    .tabItem{
                        Image(systemName: "questionmark.circle")
                        Text("Quiz")
                    }
                Library ()
                    .tabItem{
                        Image(systemName:"bookmark.fill")
                        Text("Bibliothèque")
                    }
                News()
                    .tabItem{
                        Image(systemName:"book.fill")
                        Text("Actualités")
                    }
                Favorites()
                    .tabItem{
                        Image(systemName: "heart.fill")
                        Text("Favoris")
                    }
            }
        
        .accentColor(Color("NewOrange"))
        }
    }


struct TabViewExemple_Previews: PreviewProvider {
    static var previews: some View {
        TabViewExemple()
    }
}
