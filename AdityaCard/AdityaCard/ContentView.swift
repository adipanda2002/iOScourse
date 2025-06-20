//
//  ContentView.swift
//  AdityaCard
//
//  Created by Aditya Ghosh on 20/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("aditya")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Aditya Ghosh")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+65 91441250", imageName: "phone.fill")
                InfoView(text: "adityaghosh@u.nus.edu", imageName: "envelope.fill")
                
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}


