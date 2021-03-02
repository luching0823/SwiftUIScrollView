//
//  ContentView.swift
//  SwiftUIScrollView
//
//  Created by 廖昱晴 on 2021/3/2.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            
        VStack {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    VStack(alignment: .leading) {
                        HStack {
                                VStack(alignment: .leading) {
                                    Text("Monday, AUG 20".uppercased())
                                        .foregroundColor(.secondary)
                                    Text("Your Reading")
                                        .font(.largeTitle)
                                        .fontWeight(.black)
                                        .foregroundColor(.primary)
                                }
                                Spacer()
                            }
                        .padding()
                    
                        
                        HStack {
                            Group {
                                CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")
                                CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel")
                                CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan")
                                CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Sai Kambampati")
                            }
                            .frame(width: 300)
                        }
                    }
                }
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
