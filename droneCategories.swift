//
//  droneCategories.swift
//  AeroNex_Pilot
//
//  Created by Devansh Agarwal on 29/02/24.
//
/*
import SwiftUI

struct droneCategories: View {
    @State private var isAgriculture = false
    @State private var isPhotography = false
    @State private var isInspection = false
    @State private var isSurveillance = false
    var body: some View {
        VStack{
            Image("droneCategory")
                .frame(width: 250,height: 250)
            Spacer()
            VStack{
                Form{
                    Section(header: Text("Drone Categories")) {
                        Toggle(isOn: $isAgriculture) {
                            Text("Agriculture")
                        }
                        
                        Toggle(isOn: $isPhotography) {
                            Text("Photography")
                        }
                        
                        Toggle(isOn: $isInspection) {
                            Text("Inspection")
                        }
                        
                        Toggle(isOn: $isSurveillance) {
                            Text("Surveillance")
                        }
                    }
                }
            }
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
    droneCategories()
}
*/
import SwiftUI

struct DroneCategory: View {
    @State private var isAgricultureChecked = false
    @State private var isPhotographyChecked = false
    @State private var isInspectionChecked = false
    @State private var isSurveillanceChecked = false

    var body: some View {
        VStack(spacing: 20) {
            Image("droneCategory")
                .frame(width: 250,height: 250)
            
            Text("Drone Category")
                .font(.largeTitle)
                .padding(.bottom, 10)
                .frame(width: 360,alignment: .leading)
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .inset(by: 1)
                    .stroke(.black, lineWidth: 1)
                    .frame(width: 360,height:60)
                    .foregroundColor(.clear)
                VStack(alignment:.leading){
                    Toggle("Agriculture", isOn: $isAgricultureChecked)
                        .toggleStyle(CheckboxToggleStyle())
                        .foregroundStyle(.black)
                        .frame(width:320,alignment: .leading)
                }
            }
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .inset(by: 1)
                    .stroke(.black, lineWidth: 1)
                    .frame(width: 360,height:60)
                    .foregroundColor(.clear)
                VStack(alignment:.leading){
                    Toggle("Photography", isOn: $isPhotographyChecked)
                        .toggleStyle(CheckboxToggleStyle())
                        .foregroundStyle(.black)
                        .frame(width:320,alignment: .leading)
                }
            }

            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .inset(by: 1)
                    .stroke(.black, lineWidth: 1)
                    .frame(width: 360,height:60)
                    .foregroundColor(.clear)
                VStack(alignment:.leading){
                    Toggle("Inspection", isOn: $isInspectionChecked)
                        .toggleStyle(CheckboxToggleStyle())
                        .foregroundStyle(.black)
                        .frame(width:320,alignment: .leading)
                }
            }


            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .inset(by: 1)
                    .stroke(.black, lineWidth: 1)
                    .frame(width: 360,height:60)
                    .foregroundColor(.clear)
                VStack(alignment:.leading){
                    Toggle("Surveillance", isOn: $isSurveillanceChecked)
                        .toggleStyle(CheckboxToggleStyle())
                        .foregroundStyle(.black)
                        .frame(width:320,alignment: .leading)
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
        .padding()
    }
}

struct DroneCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        DroneCategory()
    }
}

struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button(action: {
            configuration.isOn.toggle()
        }) {
            HStack {
                Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square")
                    .resizable()
                    .frame(width: 20,height: 20)
                    .foregroundColor(configuration.isOn ? .blue : .secondary)
                configuration.label
            }
        }
    }
}
