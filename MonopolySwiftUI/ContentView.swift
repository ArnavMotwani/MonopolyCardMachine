//
//  ContentView.swift
//  MonopolySwiftUI
//
//  Created by Arnav Motwani on 02/05/21.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("Blue") var blue: Int = 15000
    @AppStorage("Red") var red: Int = 15000
    @AppStorage("Green") var green: Int = 15000
    @AppStorage("Yellow") var yellow: Int = 15000
    @AppStorage("Community") var community: Int = 0
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    NavigationLink(destination: Calculator(value: $blue)) {
                        CardView(color: .blue, name: "Rajesh Motwani", number: "0101 0000 2108 1966")
                    }
                    NavigationLink(destination: Calculator(value: $red)) {
                        CardView(color: .red, name: "Arjun Motwani", number: "1010 0888 2511 2006")
                    }
                    NavigationLink(destination: Calculator(value: $green)) {
                        CardView(color: .green, name: "Ruchika Kawlra", number: "1001 1199 0805 1969")
                    }
                    NavigationLink(destination: Calculator(value: $yellow)) {
                        CardView(color: .yellow, name: "Arnav Motwani", number: "0110 1881 0707 2003")
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
            }
            .navigationTitle("Monopoly")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
