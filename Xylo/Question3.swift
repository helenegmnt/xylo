//
//  Question3.swift
//  Xylo
//
//  Created by Travail on 31/01/2023.
//

import SwiftUI

struct Question3: View {
    
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
                    Text("Quels sont les thèmes qui te font vibrer ?")
                        .font(.custom("Hey Comic", size: 28))
                        .multilineTextAlignment(.center)
                        .padding([.top, .leading, .trailing], 70.0)
                   Spacer()
                    HStack(spacing: 30){
                        Button (action: {questionPoint += 1
                            colorQuestion1 = "Lilac"
                        }, label : {ZStack{
                            Rectangle()
                                .frame(width: 150, height: 50)
                                .cornerRadius(20)
                                .foregroundColor(Color(colorQuestion1))
                            Text("Combat")
                                .foregroundColor(.black)
                        }
                        })
                        

                        Button (action: {questionPoint += 2
                            colorQuestion2 = "Lilac"
                        }, label : {
                           ZStack{
                            Rectangle()
                                .frame(width: 150, height: 50)
                                .cornerRadius(20)
                                .foregroundColor(Color(colorQuestion2))
                            Text("Amour")
                                .foregroundColor(.black)
                        }
                        })
                    }
    //                        FirstQuestion.bd
                    HStack(spacing: 30){
                        Button (action: {questionPoint += 3
                            colorQuestion3 = "Lilac"
                        }, label : {ZStack{
                            Rectangle()
                                .frame(width: 150, height: 50)
                                .cornerRadius(20)
                                .foregroundColor(Color(colorQuestion3))
                            Text("Aventure")
                                .foregroundColor(.black)
                        }
                        })
                        
                        Button (action: {questionPoint += 4
                            colorQuestion4 = "Lilac"
                        }, label : {                 ZStack{
                            Rectangle()
                                .frame(width: 150, height: 50)
                                .cornerRadius(20)
                                .foregroundColor(Color(colorQuestion4))
                            Text("Futur")
                                .foregroundColor(.black)
                        }
                        })
                    }
                        //                        FirstQuestion.manga
                        HStack(spacing: 30){
                            Button (action: {questionPoint += 5
                                colorQuestion5 = "Lilac"
                            }, label : {ZStack{
                                Rectangle()
                                    .frame(width: 150, height: 50)
                                    .cornerRadius(20)
                                    .foregroundColor(Color(colorQuestion5))
                                Text("Mystère")
                                    .foregroundColor(.black)
                            }
                            })
                            
                            //                        FirstQuestion.bd
                            Button (action: {questionPoint += 6
                                colorQuestion6 = "Lilac"
                            }, label : {ZStack{
                                Rectangle()
                                    .frame(width: 150, height: 50)
                                    .cornerRadius(20)
                                    .foregroundColor(Color(colorQuestion6))
                                Text("Crime")
                                    .foregroundColor(.black)
                                
                            }
                            })
                        }
                            Spacer()
                    NavigationLink(destination: Question4(questionPoint: $questionPoint)){
                                ZStack {
                                    RoundedRectangle(cornerRadius: /*@PLACEHOLDER=Corner Radius@*/120.0)
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
    

struct Question3_Previews: PreviewProvider {
    static var previews: some View {
        Question3(questionPoint: .constant(0))
    }
}

