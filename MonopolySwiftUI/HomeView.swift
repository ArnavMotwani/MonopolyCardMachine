//
//  ContentView.swift
//  MonopolySwiftUI
//
//  Created by Arnav Motwani on 02/05/21.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("Blue") var blue: Int = 15000
    @AppStorage("Red") var red: Int = 15000
    @AppStorage("Green") var green: Int = 15000
    @AppStorage("Yellow") var yellow: Int = 15000
    @AppStorage("Community") var community: Int = 0
    
    @AppStorage("BlueName") var blueName : String = "Player 1"
    @AppStorage("RedName") var redName : String = "Player 2"
    @AppStorage("GreenName") var greenName : String = "Player 3"
    @AppStorage("YellowName") var yellowName : String = "Player 4"
    
    @AppStorage("BlueNumber") var blueNumber : String = "0000 1111 0000 1111"
    @AppStorage("RedNumber") var redNumber : String = "1111 0000 1111 0000"
    @AppStorage("GreenNumber") var greenNumber : String = "1111 1111 0000 0000"
    @AppStorage("YellowNumber") var yellowNumber : String = "0000 0000 1111 1111"
    
    @EnvironmentObject var gameData: gameData
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    NavigationLink(destination: Calculator(value: $blue, title: "Blue")) {
                        CardView(color: .blue, name: blueName, number: blueNumber)
                    }
                    NavigationLink(destination: Calculator(value: $red, title: "Red")) {
                        CardView(color: .red, name: redName, number: redNumber)
                    }
                    NavigationLink(destination: Calculator(value: $green, title: "Green")) {
                        CardView(color: .green, name: greenName, number: greenNumber)
                    }
                    NavigationLink(destination: Calculator(value: $yellow, title: "Yellow")) {
                        CardView(color: .yellow, name: yellowName, number: yellowNumber)
                    }
                }
                Section {
                    Text("Community: \(community)")
                    Menu(content: {
                        Button("Blue", action: {
                            blue += community
                            community = 0
                        })
                        Button("Red", action: {
                            red += community
                            community = 0
                        })
                        Button("Green", action: {
                            green += community
                            community = 0
                        })
                        Button("Yellow", action: {
                            yellow += community
                            community = 0
                        })
                    }, label: {
                        HStack {
                            Spacer()
                            Label("Community", systemImage: ("person.3.fill"))
                            Spacer()
                        }
                    })
                }
                
                Section {
                    Button(action: {
                        blue = 15000
                        red = 15000
                        green = 15000
                        yellow = 15000
                        community = 0
                        gameData.history = []
                    }, label: {
                        Text("Reset game")
                    })
                }
            }
            .navigationTitle("Monopoly")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
