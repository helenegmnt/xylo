//
//  Library.swift
//  Xylo
//
//  Created by Travail on 31/01/2023.
//

import SwiftUI

struct Library: View {
    
    @State private var search: String = ""
    
    let aLibraryButton = [
        LibraryList(libraryIconImage: "romanceIcon1", libraryIconName: "Romance"),
        LibraryList(libraryIconImage: "horreurIcon1", libraryIconName: "Horreur"),
        LibraryList(libraryIconImage: "actionIcon1", libraryIconName: "Action"),
        LibraryList(libraryIconImage: "fantasyIcon1", libraryIconName: "Fantastique"),
        LibraryList(libraryIconImage: "adventureIcon1", libraryIconName: "Aventure"),
        LibraryList(libraryIconImage: "westernIcon1", libraryIconName: "Western"),
        LibraryList(libraryIconImage: "humourIcon1", libraryIconName: "Comédie"),
        LibraryList(libraryIconImage: "histoireIcon1", libraryIconName: "Historique")
    ]
    
    let columns = [GridItem(),
                   GridItem()]
    
        
    var body: some View {
        NavigationView {
            ZStack {
                Color("BackgroundBeige").ignoresSafeArea()
                
                    VStack {
                        Text("Bibliothèque")
                            .font(.custom("Hey Comic", size: 40))
                        Spacer()
                        Form {
                            TextField("\(Image(systemName: "magnifyingglass"))  Recherche", text: $search)
                                .textFieldStyle(.roundedBorder)
                        }
                        .formStyle(.columns)
                        .frame(width: 320, height: 40)
                        .padding()
                        
                        Divider()
                        
                        ScrollView {
                            LazyVGrid(columns: columns, content: {
                                ForEach(aLibraryButton) { button in
                                    NavigationLink(destination : DetailsGenre(screenName: button), label: {LibraryListRow(library: button)})
                                }
                            }
                            )
                        }
                    }
            }
        }
    }
}

struct Library_Previews: PreviewProvider {
    static var previews: some View {
        Library()
    }
}

struct LibraryList: Identifiable {
    var id = UUID()
    var libraryIconImage: String
    var libraryIconName : String
}

struct LibraryListRow: View {
    var library: LibraryList

    var body: some View {

        HStack {
                VStack {
                    HStack {
                        Spacer()
                        Image(library.libraryIconImage)
                            .resizable()
                            .frame(width: 120, height: 125)
   //                         .border(.black)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                        Spacer()
                    }
                    .padding(.top, -20.0)
                    HStack {
                        Spacer()
                        Text(library.libraryIconName)
                            .font(.custom("Hey Comic", size: 18))
                            .font(.title2)
                            .foregroundColor(.black)
                        Spacer()
                    }
                }
                .padding(.top, 40.0)
            }
        }
    }

