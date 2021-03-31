//
//  ContentView.swift
//  ap-test-pdf-images-swiftui
//
//  Created by Alex Pilugins on 31/03/2021.
//  Based on the question: https://stackoverflow.com/questions/61152480/how-can-i-set-an-image-tint-in-swiftui
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 5) {
            
            Image("Circle")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .border(Color.red, width: 1)
            
            Image("Circle")
                .resizable()
                .scaledToFit()
                .foregroundColor(.red)           // ignored
                .background(Color.gray)
                .frame(width: 100, height: 100)
                .border(Color.blue, width: 1)
            
            Image("Circle")
                .renderingMode(.template)        // Black Circle
                .colorMultiply(Color.red)
                .frame(width: 100, height: 100)
                .border(Color.green, width: 1)
            
            Image("Circle")
                .renderingMode(.template)        // Rendering Mode
                .foregroundColor(.red)           // Red Circle
                .frame(width: 100, height: 100)
                .border(Color.green, width: 1)
            
            ZStack(alignment: .top) {
                Image("Circle")
                    .renderingMode(.template)     // Rendering Mode
                    .foregroundColor(Color.green) // Green Circle
                    .opacity(0.5)
                    .offset(x: -20, y: 0)
                Image("Circle")
                    .renderingMode(.template)      // Rendering Mode
                    .foregroundColor(Color.yellow) // Green Circle
                    .opacity(0.5)
                    //.position(x: 0, y: 0)
                    .offset(x: 20, y: 0)
            }


        }.padding()
        .background(Color("WhiteSmoke"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
