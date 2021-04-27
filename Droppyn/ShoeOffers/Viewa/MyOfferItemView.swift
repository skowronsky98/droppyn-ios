//
//  MyOfferItemView.swift
//  FitRite
//
//  Created by Oskar Skowronski on 16/04/2021.
//

import SwiftUI

struct MyOfferItemView: View {
    var offer: MyOffer
    
    var body: some View {
//        ZStack{
//            RoundedRectangle(cornerRadius: 25, style: .continuous)
//                .foregroundColor(.white)
//                .shadow(radius: 5)
//                .padding(.horizontal,8)
                
            HStack{
                Image("\(offer.shoe.image)")
                    .resizable()
                    .scaledToFit()
                    .padding(4)
                    .frame(width: 120, height: 120)
                    
                    
                
                VStack(alignment: .leading) {
                    Text("\(offer.shoe.model)")
                        .font(.headline)
                        .bold()
                        .padding(.bottom,1)
                        
                        
                    Text("\(offer.shoe.brand.name)")
                        .font(.subheadline)
                    
                    Text("\(offer.size.us, specifier: "%.1f")")
                        .font(.subheadline)
                        .bold()
                        .padding(.top,2)
                    
                    Spacer()
                }.padding(.vertical)
                 
                Spacer()
                
                VStack {
                    
                    if !offer.active {
                        
                        Spacer()
                        Image(systemName: "clear")
                            .font(.title)
                            .foregroundColor(.red)
                        Spacer()
                    }
                   
                    Text("$\(offer.price, specifier: "%.0f")")
                        .font(.headline)
                        .bold()
                        .padding(.trailing,24)
                   
                    if !offer.active {
                        
                        Spacer()
                        
                    }
                }
            }.fixedSize(horizontal: false, vertical: true)
            //.padding(.horizontal,8)
//        }
//        .fixedSize(horizontal: false, vertical: true)
//        .padding(.vertical,4)
    }
}
struct MyOfferItemView_Previews: PreviewProvider {
    static var previews: some View {
        MyOfferItemView(offer: PreviewData.MyOffers[1])
    }
}
