//
//  Question2.swift
//  Xylo
//
//  Created by Travail on 31/01/2023.
//

import SwiftUI

struct Question2: View {
  
    @Binding var questionPoint: Int
    @State var colorQuestion1: String = "NewOrange"
    @State var colorQuestion2: String = "NewOrange"
    var body: some View {
       
        ZStack {
            Color("BackgroundBeige").edgesIgnoringSafeArea(.top )
            VStack {
                
                Text("Tu es plutôt ...")
                    .font(.custom("Hey Comic", size: 28))
                    .multilineTextAlignment(.center)
                    .padding([.top, .leading, .trailing], 70.0)
                Spacer()
                VStack{
                
                    Button (action: {questionPoint += 1
                        colorQuestion1 = "Lilac"
                    }, label : {
                         ZStack{
                        Rectangle()
                        .frame(width: 150, height: 50)
                        .cornerRadius(20)
                        .foregroundColor(Color(colorQuestion1))
                        Text("Jour")
                            .foregroundColor(.black)
                    }})
                    
                         
//                        FirstQuestion.manga
                    Button (action: {questionPoint += 2
                        colorQuestion2 = "Lilac"
                    }, label : {
                       ZStack{
                        Rectangle()
                            .frame(width: 150, height: 50)
                            .cornerRadius(20)
                            .foregroundColor(Color(colorQuestion2))
                        Text("Nuit")
                            .foregroundColor(.black)
                    }
})
                                        
                   }
                Spacer()
              
                
                NavigationLink(destination: Question3(questionPoint: $questionPoint)){
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
                .offset(x: 0, y: 30)
                Spacer()
                
            }
        }
    }
}



struct Question2_Previews: PreviewProvider {
    static var previews: some View {
        Question2(questionPoint: .constant(0))
    }
}

