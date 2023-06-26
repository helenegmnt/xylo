//
//  Question4.swift
//  Xylo
//
//  Created by Travail on 31/01/2023.
//

import SwiftUI

struct Question4: View {
    
   
    @Binding var questionPoint: Int
    @State var colorQuestion1: String = "NewOrange"
    @State var colorQuestion2: String = "NewOrange"
    @State var colorQuestion3: String = "NewOrange"
    @State var colorQuestion4: String = "NewOrange"
    @State var colorQuestion5: String = "NewOrange"
    @State var colorQuestion6: String = "NewOrange"
    var body: some View {
        ZStack {
            Color("BackgroundBeige").edgesIgnoringSafeArea(.top )
            VStack {
                Text("Quelle ambiance te correspond le plus ?")
                    .font(.custom("Hey Comic", size: 28))
                    .multilineTextAlignment(.center)
                    .padding([.top, .leading, .trailing], 70.0)
                Spacer()
                
                HStack(spacing: 30){
                    
                    Button (action: {questionPoint += 30
                        colorQuestion1 = "Lilac"
                    }, label : {
                        ZStack{
                            Rectangle()
                                .frame(width: 150, height: 50)
                                .cornerRadius(20)
                                .foregroundColor(Color(colorQuestion1))
                            Text("Ville")
                                .foregroundColor(.black)
                        }
                    })
                    
                    //                        FirstQuestion.manga
                    Button (action: {questionPoint += 5
                        colorQuestion2 = "Lilac"
                    }, label : {
                        ZStack{
                            Rectangle()
                                .frame(width: 150, height: 50)
                                .cornerRadius(20)
                                .foregroundColor(Color(colorQuestion2))
                            Text("Campagne")
                                .foregroundColor(.black)
                        }
                    })
                }
                    //                        FirstQuestion.bd
                    HStack(spacing: 30){
                        Button (action: {questionPoint += 4
                            colorQuestion3 = "Lilac"
                        }, label : {
                            ZStack{
                                Rectangle()
                                    .frame(width: 150, height: 50)
                                    .cornerRadius(20)
                                    .foregroundColor(Color(colorQuestion3))
                                Text("Plage")
                                    .foregroundColor(.black)
                            }
                        })
                        Button (action: {questionPoint += 3
                            colorQuestion4 = "Lilac"
                        }, label : { ZStack{
                            Rectangle()
                                .frame(width: 150, height: 50)
                                .cornerRadius(20)
                                .foregroundColor(Color(colorQuestion4))
                            Text("Montagne")
                                .foregroundColor(.black)
                        }
                        })
                    }
                        //                        FirstQuestion.manga
                HStack(spacing: 30){
                    Button (action: {questionPoint += 2
                        colorQuestion5 = "Lilac"
                    }, label : { ZStack{
                        Rectangle()
                            .frame(width: 150, height: 50)
                            .cornerRadius(20)
                            .foregroundColor(Color(colorQuestion5))
                        Text("Forêt")
                            .foregroundColor(.black)
                    }
                    })
                    
                    //                        FirstQuestion.bd
                    Button (action: {questionPoint += 1
                        colorQuestion6 = "Lilac"
                    }, label : { ZStack{
                        Rectangle()
                            .frame(width: 150, height: 50)
                            .cornerRadius(20)
                            .foregroundColor(Color(colorQuestion6))
                        Text("Désert")
                            .foregroundColor(.black)
                    }
                    })
                }
                            
                            Spacer()
                            
                NavigationLink(destination: Suggestion(questionPoint: $questionPoint)) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 120.0)
                                        .padding(.all)
                                        .frame(width: 200.0, height: 100.0)
                                        .foregroundColor(Color("Lilac"))
                                    Text("Suivant")
                                        .font(.title2)
                                        .foregroundColor(.black)
                                }
                            }
                Spacer()
                        }
                        
                        
                    }
                }
            }
        

struct Question4_Previews: PreviewProvider {
    static var previews: some View {
        Question4(questionPoint: .constant(0))
    }
}

