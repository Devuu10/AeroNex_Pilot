//
//  pilotProfile.swift
//  AeroNex_Pilot
//
//  Created by Devansh Agarwal on 01/03/24.
//

//
//  pilotProfile.swift
//  Aeronex
//
//  Created by Devansh Agarwal on 27/02/24.
//

import SwiftUI

struct pilotProfile: View {
    @State private var name : String = ""
    @State private var email : String = ""
    @State private var city : [String] = []
    @State private var phNO : String = ""
    @State private var password : String = ""
    @State private var experience : String = ""
    @State private var charges : String = ""
    var body: some View {
        VStack{
            ZStack {
                Image("pilotProfilePhoto")
                    .resizable()
                    .frame(width: 139, height: 139)
                ZStack{
                    //Ellipse 75
                    Circle()
                        .fill(Color(red: 0.23, green: 0.83, blue: 0.65))
                        .frame(width: 50, height: 50)
                    Image("profilePencil")
                        .frame(width:25,height: 25)
                    
                }.offset(x:35,y:45)
                
            }
            //David Beckham
            Text("David Beckham").font(.system(size: 24, weight: .bold)).multilineTextAlignment(.trailing)
            ScrollView{
                VStack(alignment: .leading,spacing:10){
                    
                    Text("Name").font(.system(size: 16, weight: .medium))
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 335.35999, height: 45)
                            .background(.gray)
                            .opacity(0.1)
                            .cornerRadius(14)
                            .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                    .inset(by: 0.76)
                                    .stroke(Color(red: 0.5, green: 0.48, blue: 0.48).opacity(0.14), lineWidth: 1.51991)
                            )
                        
                        
                        
                        TextField("David Beckam", text: $name)
                            .font(
                                .system(size: 16,
                                        weight:.semibold)
                            )
                            .foregroundColor(Color(red: 0.24, green: 0.24, blue: 0.26).opacity(0.6))
                            .frame(width: 260, alignment: .leading)
                        
                        
                    }
                    Text("Email").font(.system(size: 16, weight: .medium))
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 335.35999, height: 45)
                            .background(.gray)
                            .opacity(0.1)
                            .cornerRadius(14)
                            .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                    .inset(by: 0.76)
                                    .stroke(Color(red: 0.5, green: 0.48, blue: 0.48).opacity(0.14), lineWidth: 1.51991)
                            )
                        
                        
                        
                        TextField("davidbeck@gmail.com", text: $email)
                            .font(
                                .system(size: 16,
                                        weight:.semibold)
                            )
                            .foregroundColor(Color(red: 0.24, green: 0.24, blue: 0.26).opacity(0.6))
                            .frame(width: 260, alignment: .leading)
                        
                    }
                    Text("City").font(.system(size: 16, weight: .medium))
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 335.35999, height: 45)
                            .background(.gray)
                            .opacity(0.1)
                            .cornerRadius(14)
                            .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                    .inset(by: 0.76)
                                    .stroke(Color(red: 0.5, green: 0.48, blue: 0.48).opacity(0.14), lineWidth: 1.51991)
                            )
                        
                        
                        
                        TextField("Chennai", text: $city[0])
                            .font(
                                .system(size: 16,
                                        weight:.semibold)
                            )
                            .foregroundColor(Color(red: 0.24, green: 0.24, blue: 0.26).opacity(0.6))
                            .frame(width: 260, alignment: .leading)
                        
                    }
                    Text("Bio").font(.system(size: 16, weight: .medium))
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 335.35999, height: 45)
                            .background(.gray)
                            .opacity(0.1)
                            .cornerRadius(14)
                            .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                    .inset(by: 0.76)
                                    .stroke(Color(red: 0.5, green: 0.48, blue: 0.48).opacity(0.14), lineWidth: 1.51991)
                            )
                        
                        
                        
                        TextField("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam feugiat tortor ut libero lobortis, eu molestie augue aliquet. Sed sed leo at orci", text: $city[0])
                            .font(
                                .system(size: 16,
                                        weight:.semibold)
                            )
                            .foregroundColor(Color(red: 0.24, green: 0.24, blue: 0.26).opacity(0.6))
                            .frame(width: 260,height: 80, alignment: .leading)
                        
                    }
                    
                    
                }
                    
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 14)
                        .fill(Color(.black))
                        .frame(width: 148, height: 49)
                    //SAVE
                    Text("SAVE").font(.system(size: 16, weight: .semibold)).foregroundColor(Color(.white))
                    
                }.frame(alignment: .center)
            
            }
        }
    
}

#Preview {
    pilotProfile()
}
