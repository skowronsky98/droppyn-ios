//
//  ProfileView.swift
//  FitRite
//
//  Created by Oskar Skowronski on 10/03/2021.
//

import SwiftUI

struct ProfileView: View {
    @ObservedObject private var profileVM = ProfileViewModel()
    
    @State var rValue: Double
       @State var gValue: Double
       @State var bValue: Double

       @State var isPresented = false
       var SliderModalPresentation: some View {
           NavigationView {
               Form {
                   Section(header: Text("Header Background Color")) {
                       colorSlider(value: $rValue, textColor: .red)
                       colorSlider(value: $gValue, textColor: .green)
                       colorSlider(value: $bValue, textColor: .blue)
                       HStack {
                           VStack {
                               RoundedRectangle(cornerRadius: 5)
                                   .frame(width: 100)
                                   .foregroundColor(Color(red: rValue, green: gValue, blue: bValue, opacity: 1.0))
                           }
                           VStack {
                               Text("R: \(Int(rValue * 255.0))")
                               Text("G: \(Int(gValue * 255.0))")
                               Text("B: \(Int(bValue * 255.0))")
                           }
                       }
                   }
               }

               .navigationBarTitle(Text("Settings"))
                   .navigationBarItems(
                       trailing: Button (action: { self.isPresented = false } ) { Text("Done")
                           .foregroundColor(.blue)
                       }
               )
           }
       }

       var body: some View {
           VStack {
               VStack {
                   Header()
                       .foregroundColor(Color(red: rValue, green: gValue, blue: bValue, opacity: 1.0))
                       .edgesIgnoringSafeArea(.top)
                       .frame(height: 250)
                   ProfileImage()
                       .offset(y: -120)
                       .padding(.bottom, -130)
                   VStack {
                    Text("\(profileVM.user.username)")
                           .bold()
                           .font(.title)
                       Text("Software and Web Developer")
                           .font(.subheadline)
                           .foregroundColor(.gray)
                   }.padding()
               }
               Spacer()
               Button (action: { self.isPresented = true }, label: {
                   HStack {
                       Image(systemName: "slider.horizontal.3")
                           .imageScale(.large)
                       Text("Settings")
                           .bold()
                           .accessibility(label: Text("Settings"))
                   }
                   .padding()
               })
           }.sheet(isPresented: $isPresented, content: {
               self.SliderModalPresentation
           })
       }
    
    
    struct ProfileImage: View {
        var body: some View {
            VStack {
                Image("profile")
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
            }
        }
    }

    struct Header: View {
        var body: some View {
            Rectangle()
                .frame(width: 500)
        }
    }
    
    struct colorSlider: View {
        @Binding var value: Double
        var textColor: Color
        
        var body: some View {
            HStack {
                Text(verbatim: "0")
                    .foregroundColor(textColor)
                Slider(value: $value, in: 0.0...1.0)
                Text(verbatim: "255")
                    .foregroundColor(textColor)
                
            }
        }
    }
}



struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(rValue: 0.5, gValue: 0.5, bValue: 0.5)
    }
}


