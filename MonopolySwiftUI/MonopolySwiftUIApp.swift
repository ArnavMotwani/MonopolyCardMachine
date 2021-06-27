//
//  MonopolySwiftUIApp.swift
//  MonopolySwiftUI
//
//  Created by Arnav Motwani on 02/05/21.
//

import SwiftUI

@main
struct MonopolySwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(gameData())
        }
    }
}
