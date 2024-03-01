//
//  citySelection.swift
//  AeroNex_Pilot
//
//  Created by Devansh Agarwal on 29/02/24.
//

import SwiftUI

struct citySelection: View {
    @State private var isWithinCity = false
    @State private var isNearbyLocation = false
    var body: some View {
        VStack(spacing: 20){
            Image("city")
                .frame(width: 320,height: 230)
         
            VStack(alignment: .leading,spacing: 5){
                //Jason Response
                Text("City of operation").font(.system(size: 24, weight: .bold)).foregroundColor(.black).tracking(1)
                //Jason Response
                Text("Which location can a user book your drone? ").font(.system(size: 14, weight: .regular)).foregroundColor(Color(#colorLiteral(red: 0.14, green: 0.16, blue: 0.16, alpha: 1))).tracking(1)
            }
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .inset(by: 1)
                    .stroke(.black, lineWidth: 1)
                    .frame(width: 360,height:60)
                    .foregroundColor(.clear)
                CitySelectorView()
                    .foregroundStyle(.black)
                    .frame(width:320,alignment: .leading)
            }
            
            //Jason Response
            Text("Please select the range of operation from your current location").font(.system(size: 14, weight: .regular)).foregroundColor(Color(#colorLiteral(red: 0.14, green: 0.16, blue: 0.16, alpha: 1))).tracking(1)
           
            
     
                VStack(alignment: .leading,spacing: 20) {
                    VStack(alignment: .leading){
                        Toggle(isOn: $isWithinCity) {
                            Text("Anywhere within the city")
                                .font(.headline)
                                .foregroundStyle(.black)
                        }.toggleStyle(CheckboxToggleStyle())
                        Text("More than 15km from your service location").font(.system(size: 12, weight: .regular)).foregroundColor(Color(#colorLiteral(red: 0.59, green: 0.59, blue: 0.59, alpha: 1))).tracking(1)
                    }
                    VStack(alignment: .leading){
                        Toggle(isOn: $isNearbyLocation){
                            Text("Only nearby location")
                                .font(.headline)
                                .foregroundStyle(.black)
                        }.toggleStyle(CheckboxToggleStyle())
                        //Jason Response
                        //Jason Response
                        Text("Less than 15km from your service location").font(.system(size: 12, weight: .regular)).foregroundColor(Color(#colorLiteral(red: 0.59, green: 0.59, blue: 0.59, alpha: 1))).tracking(1)
                    }
                }.frame(width: 360,alignment: .leading)
                      
    
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
    citySelection()
}
