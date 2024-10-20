//
//  ToDoAppApp.swift
//  ToDoApp
//
//  Created by Wanmy on 20/10/24.
//


import FirebaseCore
import SwiftUI

@main
struct ToDoAppApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
