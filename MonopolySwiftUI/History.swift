//
//  History.swift
//  MonopolySwiftUI
//
//  Created by Arnav Motwani on 03/05/21.
//

import SwiftUI

struct History: View {
    @EnvironmentObject var gameData: gameData
    var body: some View {
        NavigationView {
            Form {
                ForEach(gameData.history, id:\.self) { action in
                    Text(action)
                }
            }
            .navigationTitle("History")
        }
    }
}

struct History_Previews: PreviewProvider {
    static var previews: some View {
        History()
    }
}
