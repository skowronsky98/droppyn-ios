//
//  ContentView.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 05/05/2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var favoriteVM = FavoriteViewModel()
    @StateObject private var sizeChart = SizeChartViewModel()
    
    var body: some View {
        
        TabView {
            MyOffersListView().environmentObject(sizeChart)
                .tabItem {
                   Image(systemName: "house.fill")
                   Text("Home")
                 }
            
            ShoeListView().environmentObject(favoriteVM).environmentObject(sizeChart)
              .tabItem {
                 Image(systemName: "bag.fill")
                 Text("Shop")
              }
            
//            ChatView()
//                .tabItem {
//                Image(systemName: "bubble.left.fill")
//                Text("Chat")
//            }
            
            FavoriteListView().environmentObject(favoriteVM)
                .tabItem {
                   Image(systemName: "heart.fill")
                   Text("Favorite")
                 }
            
        
            ProfileView()
                .tabItem {
                   Image(systemName: "person.fill")
                   Text("Profile")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
