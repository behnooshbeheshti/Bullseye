//
//  Shapes.swift
//  Bullseye
//
//  Created by Mohsen Hossein pour on 6/2/22.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack {
            Circle()
                .frame(width: 200.0, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
        }
        .background(Color.blue)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
