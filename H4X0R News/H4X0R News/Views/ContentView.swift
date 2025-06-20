//
//  ContentView.swift
//  H4X0R News
//
//  Created by Aditya Ghosh on 20/6/25.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("H4X0R News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}


#Preview {
    ContentView()
}
