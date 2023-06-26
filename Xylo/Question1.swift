//
//  Question1.swift
//  Xylo
//
//  Created by Travail on 31/01/2023.
//

import SwiftUI

struct Question1: View {
    
    @State var questionPoint: Int = 0
    @State var colorQuestion1: String = "NewOrange"
    @State var colorQuestion2: String = "NewOrange"
    @State var colorQuestion3: String = "NewOrange"
    @State var colorQuestion4: String = "NewOrange"
            var body: some View {
                ZStack {
                    Color("BackgroundBeige").edgesIgnoringSafeArea(.top )
                    VStack {
                    Text("Quel est le style qui t'intéresse le plus ?")
                        .font(.custom("Hey Comic", size: 28))
                        .multilineTextAlignment(.center)
                        .multilineTextAlignment(.center)
                        .padding([.top, .leading, .trailing], 70.0)
                            Spacer()
                        Button(action: {questionPoint += 3
                            colorQuestion1 = "Lilac"
                        }, label: {
                            ZStack{
                                Rectangle()
                                    .frame(width: 200, height: 50)
                                    .cornerRadius(20)
                                    .foregroundColor(Color(colorQuestion1))
                                HStack {
                                    Image("ninja")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .cornerRadius(20)
                                    Text("Manga")
                                    .foregroundColor(.black)
                                    Text("              ")
                                    }
                                    }
                                    })
                        //FirstQuestion.manga
                        Button(action: {questionPoint += 2
                            colorQuestion2 = "Lilac"
                        }, label :{
                            ZStack{
                                Rectangle()
                                    .frame(width: 200, height: 50)
                                    .cornerRadius(20)
                                    .foregroundColor(Color(colorQuestion2))
                                HStack {
                                    Image("superhero")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .cornerRadius(20)
                                    Text("Comics")
                                    .foregroundColor(.black)
                                    Text("              ")
                                    }
                                    }})
                        Button(action:{questionPoint += 1
                            colorQuestion3 = "Lilac"
                        }, label: {
                            ZStack{
                                Rectangle()
                                    .frame(width: 200, height: 50)
                                    .cornerRadius(20)
                                    .foregroundColor(Color(colorQuestion3))
                                HStack {
                                    Image("bulle")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .cornerRadius(20)
                                    Text("Franco - Belge")
                                    .foregroundColor(.black)
                                    Text("   ")
                                    }
                                    }})
                        Button(action:{questionPoint += 1
                            colorQuestion4 = "Lilac"
                        }, label: {
                            ZStack{
                            Rectangle()
                                    .frame(width: 200, height: 50)
                                    .cornerRadius(20)
                                    .foregroundColor(Color(colorQuestion4))
                                HStack {
                                    Image("open-book")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .cornerRadius(20)
                                    Text("Roman graphique")
                                    .foregroundColor(.black)
                                    }
                                    }})
                               //FirstQuestion.comics
                                    Spacer()
                                               NavigationLink(destination: Question2(questionPoint: $questionPoint), label : {
                                                       ZStack {
                                                           RoundedRectangle(cornerRadius: /*@PLACEHOLDER=Corner Radius@*/120.0)
                                                               .padding(.all)
                                                               .frame(width: 200.0, height: 100.0)
                                                               .foregroundColor(Color("Lilac"))
                                                           Text("Suivant")
                                                               .font(.title2)
                                                               .foregroundColor(.black)
                                                           
                                                       
                                                   }
                                                       })
                                                
                                                   Spacer()
                                                   
                                                   }
                                           }
                                           
                                       }

                                   }

                        

                       struct Question1_Previews: PreviewProvider {
                           static var previews: some View {
                               Question1()
                           }
                       }

