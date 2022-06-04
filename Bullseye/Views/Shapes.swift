//
//  Shapes.swift
//  Bullseye
//
//  Created by Mohsen Hossein pour on 6/2/22.
//

import SwiftUI

struct Shapes: View {
    @State private var wideShapes = true
    
    var body: some View {
        VStack {
            if !wideShapes {
                Circle()
                    .strokeBorder(Color.blue, lineWidth: 20.0)
                    .frame(width: 200.0, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                    .transition(.slide)
            }
            RoundedRectangle(cornerRadius: 20.0)
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
            
            Capsule()
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
            Ellipse()
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
            Button(action: {
                withAnimation {
                    wideShapes.toggle()
                }
                
            }) {
                Text("Animate!")
            }
        }
        .background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
