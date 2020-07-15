//
//  ContentView.swift
//  BusinessCardSwiftUI
//
//  Created by Peggy Wollenhaupt on 7/15/20.
//  Copyright © 2020 Peggy Wollenhaupt. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        ZStack {
            Color(red: 0, green: 0.38, blue: 0.4, opacity: 1.0)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("peggy")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 150, height: 150)
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text(" Peggy Wollenhaupt ")
                    .font(Font.custom("Caveat-Bold", size: 35))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "isande@gmail.com", imageName: "envelope")
                InfoView(text: "(667) 240-3427", imageName: "phone")

            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


