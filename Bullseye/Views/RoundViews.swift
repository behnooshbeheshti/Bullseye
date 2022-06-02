//
//  RoundViews.swift
//  Bullseye
//
//  Created by Mohsen Hossein pour on 6/2/22.
//

import SwiftUI

struct RoundedImageViewstroked: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56.0, height: 56.0)
            .overlay(
                Circle()
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
            )
    }
}

struct RoundedImageViewsFilled: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: 56.0, height: 56.0)
            .background(
            Circle()
                .fill(Color("ButtonFilledBackgroundColor"))
            )
    }
}

struct PreviewView: View {
    var body: some View {
        VStack(spacing: 10) {
            RoundedImageViewstroked(systemName: "arrow.counterclockwise")
            RoundedImageViewsFilled(systemName: "list.dash")
        }
    }
}

struct RoundViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}