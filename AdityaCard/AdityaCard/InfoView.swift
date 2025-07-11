//
//  InfoView.swift
//  AdityaCard
//
//  Created by Aditya Ghosh on 20/6/25.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(
                HStack{
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(text)
                })
            .padding(.all)
    }
}

#Preview {
    InfoView(text: "hello", imageName: "phone.fill")
}
