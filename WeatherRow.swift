//
//  WeatherRow.swift
//  WeatherApp
//
//  Created by Alexandru Meta on 21.04.2023.
//

import SwiftUI

struct WeatherRow: View {
    
    
    var logo: String
    var name: String
    var value: String
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: logo)
                .font(.title2)
                .frame(width:20, height: 20)
                .padding()
                .foregroundColor(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
                .cornerRadius(50)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(name)
                    .font(.caption)
                Text(value)
                    .bold()
                    .font(.title)
            }
        }
    }
}

struct WeatherRow_Previews: PreviewProvider {
    static var previews: some View {
        WeatherRow(logo: "thermometer", name: "Feels like", value: "8")
    }
}
