//
//  HistoryData.swift
//  MonopolySwiftUI
//
//  Created by Arnav Motwani on 10/05/21.
//

import Foundation

class gameData: ObservableObject {
    @Published var history: [String]
    
    init() {
        self.history = []
    }
}
