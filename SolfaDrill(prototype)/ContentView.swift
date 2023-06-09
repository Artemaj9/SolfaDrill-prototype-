//
//  ContentView.swift
//  SolfaDrill(prototype)
//
//  Created by Artem on 03.06.2023.
//

import SwiftUI

let backgroundGradient = LinearGradient ( colors: [Color.purple,Color.blue], startPoint: .center, endPoint: .top)


struct ContentView: View {
    @State private var alertIsVisible = false
    @State private var noteValue = 0
    @State private var score = 0
    @State private var attempts = 0
    @State private var game = false
    @State private var result = 0
    var body: some View {
        let note = ["C","D","E","F","G","A","B","Chigh"]
        ZStack {
            backgroundGradient
                .ignoresSafeArea()
            VStack(spacing: 20.0) {
                Group{
                    Button(action: {
                        playSound(key: "Tuning")
                    }) {
                        
                        Text("Tunning")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .opacity(0.7)
                        
                    }
                    Button(action: {
                        playSound(key: "C")
                        if (noteValue == 0) && game {
                            score += 1
                        }
                        game = false
                    }) {
                        
                        Text("C")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .opacity(0.7)
                        
                    }
                    Button(action: {
                        playSound(key: "D")
                        if (noteValue == 0) && game {
                            score += 1
                        }
                        game = false
                        
                    }) {
                        
                        Text("D")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .opacity(0.7)
                        
                    }
                    Button(action: {
                        playSound(key: "E")
                        if noteValue == 2  && game {
                            score += 1
                        }
                        game = false
                    }) {
                        
                        Text("E")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .opacity(0.7)
                        
                    }
                    Button(action: {
                        playSound(key: "F")
                        if noteValue == 3  && game {
                            score += 1
                        }
                        game = false
                    }) {
                        
                        Text("F")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .opacity(0.7)
                        
                    }
                    Button(action: {
                        playSound(key: "G")
                        if noteValue == 4  && game {
                            score += 1
                        }
                        game = false
                    }) {
                        
                        Text("G")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .opacity(0.7)
                        
                    }
                    Button(action: {
                        //play sound
                        playSound(key: "A")
                        if noteValue == 5  && game {
                            score += 1
                        }
                        game = false
                    }) {
                        
                        Text("A")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .opacity(0.7)
                        
                    }
                    Button(action: {
                        //play sound
                        playSound(key: "B")
                        alertIsVisible = true
                        if noteValue == 6  && game {
                            score += 1
                        }
                        game = false
                    }) {
                        
                        Text("B")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .opacity(0.6)
                    }
                    
                    Button(action: {
                        playSound(key: "Chigh")
                        if noteValue == 7  && game {
                            score += 1
                        }
                        game = false
                    }) {
                        
                        Text("C")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .opacity(0.7)
                    }
                    
                    Button(action: {
                        noteValue = Int.random(in: 0...7)
                        playSound(key: note[noteValue])
                        attempts += 1
                        game = true
                    }) {
                        
                        Text("PLAY!")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .opacity(0.7)
                    }
                }
                Text("Score: \(String(score)) / \(String(attempts))")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                
                Button(action: {
                    //play sound
                    alertIsVisible = true
                }) {
                    
                    Text("END GAME")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .opacity(0.6)
                }
            }
            .padding()
           .alert("END GAME!",
                   isPresented: $alertIsVisible,
                   actions: {
                Button("Awesome!") {
                    attempts = 0
                    score = 0
                }
             
            })
                   
        }
    }
      
}
 

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
