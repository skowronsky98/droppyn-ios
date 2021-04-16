//
//  ContentView.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 16/04/2021.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        TabView {
            MyOffersListView()
                .tabItem {
                   Image(systemName: "house.fill")
                   Text("Home")
                 }
            
            ShoeSearchListView()
              .tabItem {
                 Image(systemName: "bag.fill")
                 Text("Shop")
              }
            

              Text("The content of the third view")
                .tabItem {
                   Image(systemName: "person.fill")
                   Text("Profile")
                }
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
