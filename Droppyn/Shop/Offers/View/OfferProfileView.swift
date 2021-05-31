//
//  OfferProfileView.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 29/05/2021.
//

import SwiftUI

struct OfferProfileView: View {
    var profile: User
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationView {
            VStack {
    //            Header()
    ////                .foregroundColor(Color(blue))
    //                .edgesIgnoringSafeArea(.top)
    //                .frame(height: 250)
                ProfileImage("\(profile.photoURL)")
                    
    //                 .offset(y: -120)
    //                 .padding(.bottom, -130)
                 
                VStack {
                 Text("\(profile.firstname) \(profile.surname)")
                        .bold()
                        .font(.title)
                    Text("\(profile.email)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                 
                 HStack {
                     Image(systemName: "phone.fill")
                     Text("\(profile.phone)")
                            .bold()
                         .font(.headline)
                         
                 }.padding(.top,6)
                }.padding()
                
                Spacer()
            }
            .navigationBarTitle(Text("\(profile.username)"))
            .navigationBarItems(
                trailing: Button (action: { self.isPresented = false } ) { Text("Done")
                    .foregroundColor(.blue)
                })
           
        }
    
        
    }
}

struct OfferProfileView_Previews: PreviewProvider {
    static var previews: some View {
        OfferProfileView(profile: PreviewData.MyUser, isPresented: .constant(true))
    }
}
