//
//  DroppynApp.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 05/05/2021.
//

import SwiftUI
//import Firebase



@main
struct DroppynApp: App {
    
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            AuthView()
        }
    }
}

//class AppDelegate: NSObject, UIApplicationDelegate {
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//        print("app delegate app did finish launching")
//        FirebaseApp.configure()
//        return true
//    }
//}
