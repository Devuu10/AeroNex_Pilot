//
//  portfolio.swift
//  AeroNex_Pilot
//
//  Created by Devansh Agarwal on 29/02/24.
//

import SwiftUI

struct portfolio: View {
    @State private var bio:String = ""
    var body: some View {
        VStack{
            Image("portfolio")
            
            VStack(alignment: .leading){
                //Jason Response
                Text("Bio").font(.system(size: 24, weight: .bold)).foregroundColor(.black).tracking(1)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .inset(by: 1)
                        .stroke(.black, lineWidth: 1)
                        .frame(width: 360,height:200)
                        .foregroundColor(.clear)
                    TextField("Describe yourself and your work",text: $bio)
                        .frame(width: 320,height: 160,alignment: .topLeading)
                }
                //Jason Response
                Text("Portfolio").font(.system(size: 24, weight: .bold)).foregroundColor(.black).tracking(1)
                    .padding(.top)
                
                HStack(spacing:150){
                    //Jason Response
                    Text("Upload your work here!").font(.system(size: 14, weight: .regular)).foregroundColor(Color(#colorLiteral(red: 0.14, green: 0.16, blue: 0.16, alpha: 1))).tracking(1)
                    
                    Image("upload")
                        .resizable()
                        .frame(width: 20,height: 20)
                }
            }
            Spacer()
            
            ZStack{
                Rectangle()
                
                    .fill(Color.black)
                    .frame(width: 360, height: 45)
                    
                    .cornerRadius(10)
                Text("NEXT")
                    .font(Font.custom("SF Pro", size: 18))
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    portfolio()
}
