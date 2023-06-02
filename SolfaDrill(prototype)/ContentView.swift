//
//  ContentView.swift
//  SolfaDrill(prototype)
//
//  Created by Artem on 03.06.2023.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack(spacing: 37.0) {
            Button(action: {
                //play sound
                playSound(key: "Tuning")
            }) {
                
                Text("Tunning")
                    .foregroundColor(.green)
                    .font(.system(size: 30))
                
            }
            Button(action: {
                //play sound
                playSound(key: "C")
            }) {
                
                Text("C")
                    .foregroundColor(.green)
                    .font(.system(size: 30))
                
            }
            Button(action: {
                //play sound
                playSound(key: "D")
            }) {
                
                Text("D")
                    .foregroundColor(.green)
                    .font(.system(size: 30))
                
            }
            Button(action: {
                //play sound
                playSound(key: "E")
            }) {
                
                Text("E")
                    .foregroundColor(.green)
                    .font(.system(size: 30))
                
            }
            Button(action: {
                //play sound
                playSound(key: "F")
            }) {
                
                Text("F")
                    .foregroundColor(.green)
                    .font(.system(size: 30))
                
            }
            Button(action: {
                //play sound
                playSound(key: "G")
            }) {
                
                Text("G")
                    .foregroundColor(.green)
                    .font(.system(size: 30))
                
            }
            Button(action: {
                //play sound
                playSound(key: "A")
            }) {
                
                Text("A")
                    .foregroundColor(.green)
                    .font(.system(size: 30))
                
            }
            Button(action: {
                //play sound
                playSound(key: "B")
            }) {
                
                Text("B")
                    .foregroundColor(.green)
                    .font(.system(size: 30))
                
            }
            Button(action: {
                //play sound
                playSound(key: "Chigh")
            }) {
                
                Text("Chigh")
                    .foregroundColor(.green)
                    .font(.system(size: 30))
                
            }
            
        }
        .padding()
    }
 
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
