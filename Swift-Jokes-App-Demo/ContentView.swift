//
//  ContentView.swift
//  Swift-Jokes-App-Demo
//
//  Created by Andre Villanueva on 3/20/24.
//

import SwiftUI

struct ContentView: View {
    @State private var joke = ""
    
    let jokes = ["What do you call a fish wearing a bowtie? Sofishticated.",
                 "What do you call a factory that makes okay products? A satisfactory.",
                 "What do you call someone with no body and no nose? Nobody knows.",
                 "What does a bee use to brush its hair? A honeycomb!"]
    
    var body: some View {
        VStack {
            Text(joke)
                .padding()
            
            Button("Show Joke") {
                let randomIndex = Int.random(in: 0..<self.jokes.count)
                self.joke = self.jokes[randomIndex]
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
