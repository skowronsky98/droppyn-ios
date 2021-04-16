//
//  ShoeSearchListView.swift
//  FitRite
//
//  Created by Oskar Skowronski on 13/02/2021.
//

import SwiftUI

struct ShoeSearchListView: View {
    @ObservedObject private var shoeSearchVM = ShoeSearchViewModel()
    
    var body: some View {
        List{
            ForEach(shoeSearchVM.shoes){ s in
                NavigationLink(destination: ShoeDetailView(shoe: s)){
                    ShoeItemView(shoe: s)
                }
            }
        }.navigationBarTitle("Search Shoes")
    }
}

struct ShoeSearchListView_Previews: PreviewProvider {
    static var previews: some View {
        ShoeSearchListView()
    }
}
