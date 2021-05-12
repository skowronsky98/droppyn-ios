//
//  FavoriteView.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 27/04/2021.
//

import SwiftUI

struct FavoriteListView: View {
    
    @StateObject private var favoriteVM = FavoriteViewModel()
    var body: some View {
        
        NavigationView{
            List{
                ForEach(favoriteVM.favoriteOffers){ favorite in
                    
                    ZStack {
                        MyOfferItemView(offer: favorite)
                        
                        NavigationLink(destination: OfferDetailView(offer: favorite)){
                            EmptyView()
                            
                        }
               
                    }
                    
                }.onDelete(perform: { indexSet in
                    for i in indexSet {
                        favoriteVM.deleteItem(index: i)
                    }
                })
                
            }.listStyle(PlainListStyle())
            .navigationBarTitle("Favorite")
        }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteListView()
    }
}
