//
//  pilotSignUp.swift
//  AeroNex_Pilot
//
//  Created by Devansh Agarwal on 29/02/24.
//

import SwiftUI
import Firebase
struct pilotSignUp: View {
   
   
        @State private var email = ""
        @State private var password = ""
        @State private var isPasswordVisible = false
        
        var body: some View {
            NavigationStack{
                Group{
                    ZStack(alignment: .leading){
                        Image("aero")
                            .frame(alignment: .center)
                            .offset(x: 30, y: -50)
                        VStack(alignment: .leading){
                            Text("Create an \nAccount!")
                                .font(.system(size: 36).weight(.bold))
                            
                        }
                        .padding(.leading, 20)
                    }.padding(.top,80)
                }
                
                VStack{
                    
                    //                VStack(alignment: .leading){
                    //                    Text("Username")
                    //                        .font(
                    //                            Font.custom("SF Pro", size: 16)
                    //                                .weight(.medium)
                    //                        )
                    //                        .foregroundColor(.black)
                    //                        .frame(width: 100, height: 18.27284, alignment: .topLeading)
                    //
                    //                    ZStack{
                    //                        Rectangle()
                    //
                    //                            .foregroundColor(.clear)
                    //                            .frame(width: 360, height: 40)
                    //                            .background(.white)
                    //                            .cornerRadius(14)
                    //                            .overlay(
                    //                                RoundedRectangle(cornerRadius: 14)
                    //                                    .inset(by: 0.76)
                    //                                    .stroke(Color(red: 0.5, green: 0.48, blue: 0.48).opacity(0.14), lineWidth: 1.51991)
                    //                            )
                    //                        HStack{
                    //                            Image("ic-user1")
                    //                                .frame(width: 18, height: 18)
                    //
                    //                            Rectangle()
                    //                                .foregroundColor(.clear)
                    //                                .frame(width: 2, height: 28)
                    //                                .background(Color(red: 0.87, green: 0.87, blue: 0.87))
                    //                            TextField("Username",text: $username)
                    //
                    //                                .frame(width:280,height: 18)
                    //                        }
                    //                    }
                    //}
                    
                    VStack(alignment: .leading){
                        Text("Email")
                            .font(
                                Font.custom("SF Pro", size: 16)
                                    .weight(.medium)
                            )
                            .foregroundColor(.black)
                            .frame(width: 72.312, height: 18.27284, alignment: .topLeading)
                        ZStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 360, height: 40)
                                .background(.white)
                                .cornerRadius(14)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .inset(by: 0.76)
                                        .stroke(Color(red: 0.5, green: 0.48, blue: 0.48).opacity(0.14), lineWidth: 1.51991)
                                )
                            HStack{
                                Image("ic-envelope")
                                    .frame(width: 18, height: 18)
                                
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 2, height: 28)
                                    .background(Color(red: 0.87, green: 0.87, blue: 0.87))
                                TextField("Email",text: $email)
                                
                                    .frame(width:280,height: 18)
                                
                            }
                        }
                    }.padding(.top,50)
                    
                    
                    VStack(alignment: .leading){
                        Text("Password")
                            .font(
                                Font.custom("SF Pro", size: 16)
                                    .weight(.medium)
                            )
                            .foregroundColor(.black)
                            .frame(width: 72.312, height: 18.27284, alignment: .topLeading)
                        ZStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 360, height: 40)
                                .background(.white)
                                .cornerRadius(14)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .inset(by: 0.76)
                                        .stroke(Color(red: 0.5, green: 0.48, blue: 0.48).opacity(0.14), lineWidth: 1.51991)
                                )
                            HStack{
                                Image("ic-key")
                                    .frame(width: 18, height: 18)
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 2, height: 28)
                                    .background(Color(red: 0.87, green: 0.87, blue: 0.87))
                                if isPasswordVisible {
                                    TextField("Password", text: $password)
                                } else {
                                    SecureField("Password", text: $password)
                                }
                                Button(action: {
                                    isPasswordVisible.toggle()
                                }) {
                                    Image(systemName: isPasswordVisible ? "eye.fill" : "eye.slash.fill")
                                        .foregroundColor(.black)
                                }
                                
                                
                            }.frame(width:320,height:18)
                            
                        }
                        Text("Forgot password?")
                            .font(Font.custom("SF Pro", size: 12))
                            .foregroundColor(Color(red: 0.23, green: 0.83, blue: 0.65))
                            .offset(x:260)
                    }.padding(.top,10)
                    
                    
                    
                    Spacer()
                    Button{
                        register()
                    }label:{
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 365, height: 40)
                            .background(Color(red: 0.1, green: 0.11, blue: 0.12))
                        
                            .cornerRadius(10)
                            .overlay(
                                Text("Sign Up")
                                    .font(
                                        Font.custom("SF Pro", size: 18)
                                            .weight(.semibold)
                                    )
                                    .foregroundColor(.white)
                            ).padding(.top)
                    }
                    HStack{                            /*NavigationLink(destination: loginPage().navigationBarBackButtonHidden(true)) {*/
                        
                        Text("Already have an account?")
                            .font(Font.custom("SF Pro", size: 12))
                            .foregroundColor(.black)
                        Text("Log In")
                            .font(Font.custom("SF Pro", size: 12))
                            .foregroundColor(Color(red: 0.23, green: 0.83, blue: 0.65))
                    }
                  //  }
                    
                    
                    
                }.offset(y:-100)
                
                
                    .ignoresSafeArea()
            }
        }
            
            
            
            
            func register(){
                Auth.auth().createUser(withEmail:email, password: password){
                    result,error in if error != nil{
                        print (error!.localizedDescription)
                    }
                }
    }
}

#Preview {
    pilotSignUp()
}
