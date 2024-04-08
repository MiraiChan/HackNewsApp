//
//  ContentView.swift
//  HackNewsApp
//
//  Created by Almira Khafizova on 03.04.24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                Text(post.title)
            }
            .navigationTitle("HackNewsApp")
        }
        .onAppear{
            self.networkManager.fetchData()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

let posts = [
    Post(id: "1", title: "List of News")
]
