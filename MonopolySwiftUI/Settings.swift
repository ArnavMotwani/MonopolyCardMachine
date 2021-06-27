//
//  Settings.swift
//  MonopolySwiftUI
//
//  Created by Arnav Motwani on 03/05/21.
//

import SwiftUI

struct Settings: View {
    @AppStorage("BlueName") var blueName : String = "Player 1"
    @AppStorage("RedName") var redName : String = "Player 2"
    @AppStorage("GreenName") var greenName : String = "Player 3"
    @AppStorage("YellowName") var yellowName : String = "Player 4"
    
    @AppStorage("BlueNumber") var blueNumber : String = "0000 1111 0000 1111"
    @AppStorage("RedNumber") var redNumber : String = "1111 0000 1111 0000"
    @AppStorage("GreenNumber") var greenNumber : String = "1111 1111 0000 0000"
    @AppStorage("YellowNumber") var yellowNumber : String = "0000 0000 1111 1111"
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Blue")) {
                    HStack {
                        Text("Name:")
                            .bold()
                        TextField("Name", text: $blueName)
                    }
                    HStack {
                        Text("Number:")
                            .bold()
                        TextField("Number", text: $blueNumber)
                    }
                }
                
                Section(header: Text("Red")) {
                    HStack {
                        Text("Name:")
                            .bold()
                        TextField("Name", text: $redName)
                    }
                    HStack {
                        Text("Number:")
                            .bold()
                        TextField("Number", text: $redNumber)
                    }
                }
                
                Section(header: Text("Green")) {
                    HStack {
                        Text("Name:")
                            .bold()
                        TextField("Name", text: $greenName)
                    }
                    HStack {
                        Text("Number:")
                        TextField("Number", text: $greenNumber)
                    }
                }
                
                Section(header: Text("Yellow")) {
                    HStack {
                        Text("Name:")
                            .bold()
                        TextField("Name", text: $yellowName)
                    }
                    HStack {
                        Text("Number:")
                        TextField("Number", text: $yellowNumber)
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
