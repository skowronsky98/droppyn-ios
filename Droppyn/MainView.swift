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
            
            ShoeListView()
              .tabItem {
                 Image(systemName: "bag.fill")
                 Text("Shop")
              }
            

            ProfileView(rValue: 0.5, gValue: 0.5, bValue: 0.5)
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
