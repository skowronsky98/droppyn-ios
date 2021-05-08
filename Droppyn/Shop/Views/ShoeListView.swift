//
//  ShoeSearchListView.swift
//  FitRite
//
//  Created by Oskar Skowronski on 13/02/2021.
//

import SwiftUI

struct ShoeListView: View {
    @ObservedObject private var shoeListVM = ShoeListViewModel()
    
    var body: some View {
        
        NavigationView{
            List{
                ForEach(shoeListVM.shoes){ shoe in
                    NavigationLink(destination: OffersListView(shoe: shoe)){
                        ShoeItemView(shoe: shoe)
                    }
                }
            }.navigationBarTitle("Search Shoes")
        }
    }
}

struct ShoeSearchListView_Previews: PreviewProvider {
    static var previews: some View {
        ShoeListView()
    }
}
