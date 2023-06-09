//
//  ContentView.swift
//  SolfaDrill(prototype)
//
//  Created by Artem on 03.06.2023.
//

import SwiftUI

let backgroundGradient = LinearGradient ( colors: [Color.purple, Color.blue], startPoint: .center, endPoint: .top)


struct ContentView: View {
    @State private var alertIsVisible = false
    @State private var noteValue = 0
    @State private var score = 0
    @State private var attempts = 0
    var body: some View {
        var note = ["C","D","E","F","G","A","B","Chigh"]
        ZStack {
            backgroundGradient
                .ignoresSafeArea()
            VStack(spacing: 20.0) {
                Group{
                    Button(action: {
                        //play sound
                        playSound(key: "Tuning")
                    }) {
                        
                        Text("Tunning")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                        
                    }
                    Button(action: {
                        //play sound
                        playSound(key: "C")
                        attempts += 1
                        if noteValue == 0 {
                            score += 1
                        }
                    }) {
                        
                        Text("C")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                        
                    }
                    Button(action: {
                        //play sound
                        playSound(key: "D")
                        attempts += 1
                        if noteValue == 1 {
                            score += 1
                        }
                        
                    }) {
                        
                        Text("D")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .opacity(0.7)
                        
                    }
                    Button(action: {
                        //play sound
                        playSound(key: "E")
                        attempts += 1
                        if noteValue == 2 {
                            score += 1
                        }
                    }) {
                        
                        Text("E")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .opacity(0.7)
                        
                    }
                    Button(action: {
                        //play sound
                        playSound(key: "F")
                        attempts += 1
                        if noteValue == 3 {
                            score += 1
                        }
                    }) {
                        
                        Text("F")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .opacity(0.7)
                        
                    }
                    Button(action: {
                        //play sound
                        playSound(key: "G")
                        attempts += 1
                        if noteValue == 4 {
                            score += 1
                        }
                    }) {
                        
                        Text("G")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .opacity(0.7)
                        
                    }
                    Button(action: {
                        //play sound
                        playSound(key: "A")
                        attempts += 1
                        if noteValue == 5 {
                            score += 1
                        }
                        
                    }) {
                        
                        Text("A")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .opacity(0.7)
                        
                    }
                    Button(action: {
                        //play sound
                        playSound(key: "B")
                        attempts += 1
                        if noteValue == 6 {
                            score += 1
                        }
                    }) {
                        
                        Text("B")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .opacity(0.6)
                    }
                    
                    Button(action: {
                        //play sound
                        playSound(key: "Chigh")
                        attempts += 1
                        if noteValue == 7 {
                            score += 1
                        }
                    }) {
                        
                        Text("C")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .opacity(0.7)
                    }
                    
                    Button(action: {
                        noteValue = Int.random(in: 0...7)
                        playSound(key: note[noteValue])
                    }) {
                        
                        Text("PLAY!")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .opacity(0.7)
                    }
                }
                Text("Score: \(String(score))/ \(String(attempts))")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
            }
            .padding()
        }
    }
 
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
