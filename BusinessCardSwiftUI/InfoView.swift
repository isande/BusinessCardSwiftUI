//
//  InfoView.swift
//  BusinessCardSwiftUI
//
//  Created by Peggy Wollenhaupt on 7/15/20.
//  Copyright © 2020 Peggy Wollenhaupt. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height:50.0)
            .foregroundColor(Color.white)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(Color(red: 0, green: 0.38, blue: 0.4, opacity: 1.0))
                Text(text)
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
