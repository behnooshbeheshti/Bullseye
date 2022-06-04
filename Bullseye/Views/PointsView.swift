//
//  PointsView.swift
//  Bullseye
//
//  Created by Mohsen Hossein pour on 6/3/22.
//

import SwiftUI

struct PointsView: View {
    
    @Binding var alertIsVibible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        VStack(spacing: 10){
            InstructionText(text: "The slider's value is")
            BigNumberText(text: "89")
            BodyText(text: "You scored 200 points\n🎉🎉🎉")
            Button(action: {}) {
                ButtonText(text: "Start New Round")
            }
            
            
        }
        .padding()
        .frame(maxWidth: 300)
        .background(Color("BackgroundColor"))
        .cornerRadius(21.0)
        .shadow(radius: 10, x:5 , y: 5)
    }
}

struct PointsView_Previews: PreviewProvider {
    static var previews: some View {
        PointsView()
        PointsView()
            .previewLayout(.fixed(width: 568, height: 320))
        PointsView()
            .preferredColorScheme(.dark)
        PointsView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
