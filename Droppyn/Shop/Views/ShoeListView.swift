//
//  ShoeSearchListView.swift
//  FitRite
//
//  Created by Oskar Skowronski on 13/02/2021.
//

import SwiftUI
import SwiftUIRefresh

struct ShoeListView: View {
    @StateObject private var shoeListVM = ShoeListViewModel()
    @State private var isShowing = false
    
    var body: some View {
        
        NavigationView{
            List{
                ForEach(shoeListVM.shoes){ shoe in
                    NavigationLink(destination: OffersListView(shoe: shoe)){
                        ShoeItemView(shoe: shoe)
                    }
                }
            }
            .pullToRefresh(isShowing: $isShowing) {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    self.isShowing = false
                    shoeListVM.fetchShoes()
                }
            }
           .navigationBarTitle("Search Shoes")
            

        }
    }
}

struct ShoeSearchListView_Previews: PreviewProvider {
    static var previews: some View {
        ShoeListView()
    }
}
