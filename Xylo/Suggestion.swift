//
//  Suggestion.swift
//  Xylo
//
//  Created by Travail on 31/01/2023.
//

//
//  Suggestion.swift
//  Xylo
//
//  Created by Travail on 31/01/2023.
//

import SwiftUI

struct Suggest: Identifiable{
    
    var id = UUID()
    var imageSuggestion: String
    var nameSuggestion: String
    var authorSuggestion: String
    var bookPoint: Int
}

struct Suggestion: View {
    @Binding var questionPoint: Int
    
    let columns = [
    GridItem(),
    GridItem()
    ]
    
    var suggestbox = [
        Suggest(imageSuggestion: "monster", nameSuggestion: "Monster", authorSuggestion: "Urasawa Naoki ", bookPoint: 17),
        Suggest(imageSuggestion: "nana", nameSuggestion: "Nana 1", authorSuggestion: "Yazawa Ai", bookPoint: 12),
        Suggest(imageSuggestion: "mashle", nameSuggestion: "Mashle 1", authorSuggestion: "Komoto Hajime", bookPoint: 7)
    ]
    var body: some View {

        ZStack{
        Color("BackgroundBeige").edgesIgnoringSafeArea(.top )
            ScrollView {
                VStack{
                    VStack{
                        Text("Résultats")
                            .font(.custom("Hey Comic", size: 40))
                            .padding(.bottom)
                        Spacer()
                        
                        NavigationLink(destination: DetailsSuggestion(suggestionDetails: Suggest(imageSuggestion: "EnProieAuSilence", nameSuggestion: "En proie au silence", authorSuggestion: "Torikai Akane", bookPoint: 17)), label: {
                           
        switch questionPoint {
        case 15..<Int.max :
        VStack {Image("EnProieAuSilence")
        .resizable()
        .frame(width: 260, height: 300)
                                   Text("En Proie Au Silence 1")
                                       .foregroundColor(.black)
                                       .font(.title)
                                       .padding(.top, 20.0)}
                           case 10..<14 :
                               VStack {Image("monster")
                                   .resizable()
                                   .frame(width: 260, height: 300)
                               Text("Monster")
                                   .font(.title)
                                   .padding(.top, 20.0)}
                           default :
                               VStack {Image("monster")
                                   .resizable()
                                   .frame(width: 260, height: 300)
                               Text("Monster")
                                   .font(.title)
                                   .padding(.top, 20.0)}
                           }})
                       
                        
                        Spacer()
                        Divider()
                        
                        Spacer()
                    }
                    LazyVGrid(columns: columns, content: {
                        ForEach(suggestbox.suffix(from: 1)) { suGst in
                            NavigationLink(destination: DetailsSuggestion(suggestionDetails: suGst), label: {SuggestRow(suggest: suGst)})
                            
                        }
                    })
                    //                    Spacer()
                }
            }
    }

    }
}

struct Suggestion_Previews: PreviewProvider {
    static var previews: some View {
        Suggestion(questionPoint: .constant(0))
    }
}

struct SuggestRow: View {
    var suggest: Suggest
    
    var body: some View {
        
           
                VStack{
                Image(suggest.imageSuggestion)
                    .resizable()
                    .frame(width: 110,height: 155)
                Text(suggest.nameSuggestion)
                    .font(.title)
                    .foregroundColor(.black)
                    .padding()
                Spacer()
            }
           
            
        }
    }

