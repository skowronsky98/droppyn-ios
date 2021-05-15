//
//  ShoeDetailView.swift
//  FitRite
//
//  Created by Oskar Skowronski on 12/02/2021.
//

import SwiftUI

struct ShoeDetailView: View {
    
    var shoe : Shoe
    
    var body: some View {
        
        VStack {
            Image("\(shoe.media.imageUrl)")
                .resizable()
                .scaledToFit()
                .fixedSize(horizontal: false, vertical: true)
            
            
            Text("\(shoe.model)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.semibold)
            
            Spacer()
        }
        
    }
}

struct ShoeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ShoeDetailView(shoe: PreviewData.Shoes[0])
    }
}
