//
//  Calculator.swift
//  MonopolySwiftUI
//
//  Created by Arnav Motwani on 02/05/21.
//

import SwiftUI

struct Calculator: View {
    enum choices {
        case m
        case p
        case c
        case d
    }
    enum colors {
        case blue
        case red
        case green
        case yellow
        
    }
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State var amount: String = "0"
    @State var choice: choices = .m
    @State var color: colors = .blue
    
    @AppStorage("Blue") var blue: Int = 15000
    @AppStorage("Red") var red: Int = 15000
    @AppStorage("Green") var green: Int = 15000
    @AppStorage("Yellow") var yellow: Int = 15000
    @AppStorage("Community") var community: Int = 0
    
    @Binding var value: Int
    
    var body: some View {
        Form {
            Section {
                HStack {
                    Text("Amount")
                    TextField("Amount :", text: $amount)
                        .keyboardType(.numberPad)
                }
                Picker("Choice", selection: $choice){
                    Image(systemName: "person.fill.badge.minus").tag(choices.m)
                    Image(systemName: "person.fill.badge.plus").tag(choices.p)
                    Image(systemName: "person.2.fill").tag(choices.d)
                    Image(systemName: "person.3.fill").tag(choices.c)
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            if choice == .d {
                Section {
                    Picker("Sent to?", selection: $color) {
                        Text("Blue").tag(colors.blue)
                        Text("Red").tag(colors.red)
                        Text("Green").tag(colors.green)
                        Text("Yellow").tag(colors.yellow)
                    }
                }
                .pickerStyle(WheelPickerStyle())
            }
            
            Section {
                Button(action: {
                    UIImpactFeedbackGenerator(style: .medium).impactOccurred()
                    switch choice {
                    case .m:
                        if value >= Int(amount)! {
                            value -= Int(amount)!
                        }
                    case .p:
                        value += Int(amount)!
                    case .c:
                        if value >= Int(amount)! {
                            value -= Int(amount)!
                            community += Int(amount)!
                        }
                    case .d:
                        if value >= Int(amount)! {
                            value -= Int(amount)!
                            switch color {
                            case .blue:
                                blue += Int(amount)!
                            case .red:
                                red += Int(amount)!
                            case .green:
                                green += Int(amount)!
                            case .yellow:
                                yellow += Int(amount)!
                            }
                        }
                    }
                    self.presentationMode.wrappedValue.dismiss()
                    
                }, label: {
                    Text("Update")
                })
                
                Button(action: {
                    UIImpactFeedbackGenerator(style: .medium).impactOccurred()
                    value += 2000
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Pass Go")
                        .foregroundColor(.green)
                })
            }
        }
        .navigationTitle("Calculator")
    }
}
