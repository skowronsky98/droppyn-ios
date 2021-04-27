//
//  ShoeItemView.swift
//  FitRite
//
//  Created by Oskar Skowronski on 09/02/2021.
//

import SwiftUI

struct ShoeItemView: View {
    var shoe : Shoe
    
    var body: some View {
       
                
            HStack{
                Image("\(shoe.image)")
                    .resizable()
                    .scaledToFit()
                    .padding(4)
                    .frame(width: 120, height: 120)
                    
                
                VStack(alignment: .leading) {
                    Text("\(shoe.model)")
                        .font(.headline)
                        .bold()
                        .padding(.bottom,1)
                        
                        
                    Text("\(shoe.brand.name)")
                        .font(.subheadline)
                    
                    Spacer()
                }.padding()
                 
                Spacer()
            }
            .padding(.horizontal,8)

        
        .fixedSize(horizontal: false, vertical: true)
//        .padding(.vertical,4)
    }
}

struct ShoeItemView_Previews: PreviewProvider {
    static var previews: some View {
        ShoeItemView(shoe: Shoe(id: UUID(), model: "Air Max", brand: Brand(name: "Nike", image: "none"), image: "shoe", favorite: false))
//        shoe: .constant(Shoe(id: UUID(), model: "Air Max", brand: "Nike", image: "shoe"))
    }
}
