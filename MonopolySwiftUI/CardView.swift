//
//  CardView.swift
//  MonopolySwiftUI
//
//  Created by Arnav Motwani on 02/05/21.
//

import SwiftUI

struct CardView: View {
    @AppStorage("Blue") var blue: Int = 15000
    @AppStorage("Red") var red: Int = 15000
    @AppStorage("Green") var green: Int = 15000
    @AppStorage("Yellow") var yellow: Int = 15000
    
    var color: Color
    var name: String
    var number: String
    
    var amount: Int {
        switch color {
        case .blue:
            return blue
        case .red:
            return red
        case .green:
            return green
        case .yellow:
            return yellow
        default:
            return 0
        }
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text(number)
                    .font(.title2.bold())
                    .frame(width: 250)
                HStack(spacing: 30){
                    Text(name)
                        .font(.title3)
                    Text("$\(String(amount))")
                        .font(.title3.italic().bold())
                        .padding(7.5)
                        .background(Capsule().foregroundColor(color.opacity(0.3)))
                }
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(color.opacity(0.50)).frame(width: 275))
            Spacer()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Form {
            CardView(color: .blue, name: "Rajesh Motwani", number: "0101 0000 2108 1966")
            CardView(color: .red, name: "Arjun Motwani", number: "1101 0888 2511 2006")
        }
    }
}
