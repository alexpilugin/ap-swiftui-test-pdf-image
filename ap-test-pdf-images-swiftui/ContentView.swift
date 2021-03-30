//
//  ContentView.swift
//  ap-test-pdf-images-swiftui
//
//  Created by Alex Pilugins on 31/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 15) {
            
            Image("Circle")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .border(Color.red, width: 1)
            
            Image("Circle")
                .resizable()
                .scaledToFit()
                .foregroundColor(.red)
                .background(Color.gray)
                .frame(width: 100, height: 100)
                .border(Color.blue, width: 1)
            
            Image("Circle")
                .renderingMode(.template) // Black Circle
                .colorMultiply(Color.red)
                .frame(width: 100, height: 100)
                .border(Color.green, width: 1)
            
            Image("Circle")
                .renderingMode(.template) // Rendering Mode
                .foregroundColor(.red) // Red Circle
                .frame(width: 100, height: 100)
                .border(Color.green, width: 1)

           Spacer()
        }.padding()
        .background(Color("WhiteSmoke"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
