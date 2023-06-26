//  QuizStart.swift
//  Xylo
//
//  Created by Travail on 31/01/2023.
//

import SwiftUI
struct QuizStart: View {
    @State private var backgroundColor: Color = Color("BackgroundBeige")
    var body: some View {
    NavigationView {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.top )
            VStack {
                
                Spacer()
                    Text("Découvre ton prochain coup de coeur")
                    .font(.custom("Hey Comic", size: 28))
                        .multilineTextAlignment(.center)
                        .padding([.top, .leading, .trailing], 70.0)
                        .padding()
                    Image("OutScreen")
                        .resizable()
                        
                        
                    VStack{
                        NavigationLink(destination: Question1()){
                            ZStack {
                                RoundedRectangle(cornerRadius: /*@PLACEHOLDER=Corner Radius@*/120.0)
                                    .padding(.all)
                                    .frame(width: 300.0, height: 100.0)
                                    .foregroundColor(Color("NewOrange"))
                                Text("Démarrer le Quiz")
                                    .font(.title2)
                                    .foregroundColor(.black)
                                    Spacer()
                            }
                            
                        }
                        
                    }
                Spacer()
                    }
                
                    }
            }
            
        }

    }

struct QuizStart_Previews: PreviewProvider {
    static var previews: some View {
        QuizStart()
    }
}

