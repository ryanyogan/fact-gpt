//
//  ContentView.swift
//  Fact
//
//  Created by Ryan Yogan on 6/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            Task {
                let api = ChatGPTAPI(apiKey: "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")
                do {
                    let stream = try await api.sendMessageStream(text: "Summarize the movie The Dark Knight")
                    
                    for try await line in stream {
                        print(line)
                    }
                    
                    let text = try await api.sendMessage("What is a Flux Capicator?")
                    print(text)
                    let text2 = try await api.sendMessage("What actors where in that movie and how many questions have I asked? Also... will we ever get hover boards from the movie?")
                    print(text2)
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
