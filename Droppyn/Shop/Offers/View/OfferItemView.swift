//
//  OfferItemView.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 08/05/2021.
//

import SwiftUI

struct OfferItemView: View {
    var offer: Offer
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .foregroundColor(.white)
                .shadow(radius: 5)
                //.padding(.horizontal,8)
                
            HStack{
                ProfileImage("\(offer.user.photoURL)")
                    .scaledToFit()
                    .padding(14)
                    
                    
                
                VStack(alignment: .leading) {
                    
                    
                    Text("\(offer.user.username)")
                        .font(.title3)
                        .bold()
                        .padding(.bottom,1)
                        .padding(.top)
                        
                        
//                    Text("\(offer.shoe.brand.name)")
//                        .font(.subheadline)
                    
                    Text("\(offer.size.us, specifier: "%.1f")")
                        .font(.headline)
                        .bold()
                        .padding(.top,2)
                    
                    Spacer()
                }.padding(.vertical)
                 
                Spacer()
                
                VStack {
                    Spacer()
                    
                    if !offer.active {
                        Image(systemName: "clear")
                            .font(.title)
                            .foregroundColor(.red)
                            .padding(.trailing,24)
                    }
                    if offer.active {
                        Text("$\(offer.price, specifier: "%.0f")")
                            .font(.headline)
                            .bold()
                            .padding(.trailing,24)
                    }
                    
                    Spacer()
                }
            }.fixedSize(horizontal: false, vertical: true)
            //.padding(.horizontal,8)
        }
        .fixedSize(horizontal: false, vertical: true)
        .padding(.vertical,4)
    }
}

struct ProfileImage: View {
    var url: String
    
    init(_ url: String) {
        self.url = url
    }
    
    var body: some View {
        VStack {
            Image("\(url)")
                .resizable()
                .frame(width: 110, height: 110)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 2)
                
        }
    }
}

struct OfferItemView_Previews: PreviewProvider {
    static var previews: some View {
        OfferItemView(offer: PreviewData.Offers[0])
    }
}
