//
//  ContentView.swift
//  Bullseye
//
//  Created by Mohsen Hossein pour on 5/19/22.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVibible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                InstractionsView(game: $game)
                HStack {
                    Text("1")
                        .bold()
                        .foregroundColor(Color("TextColor"))
                    Slider(value: $sliderValue, in:1.0...100.0)
                    Text("100")
                        .bold()
                        .foregroundColor(Color("TextColor"))
                }
                .padding()
                Button(action: {
                    print("Hello, SwiftUL!")
                    alertIsVibible = true
                }) {
                    Text("Hit me".uppercased())
                        .bold()
                        .font(.title3)
                }
                .padding(20.0)
                .background(
                    ZStack {
                        Color("ButtonColor")
                        LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                    })
                .foregroundColor(Color.white)
                .cornerRadius(21.0)
                .alert(isPresented: $alertIsVibible, content: {
                    let roundedValue = Int(sliderValue.rounded())
                    return Alert(title: Text("Hello there!"), message: Text("The slider's value is \(roundedValue).\n" + "You scored \(game.points(sliderValue: roundedValue)) points this round"), dismissButton: .default(Text("Awesome!")))
                })
                
            }
        }
    }
}
struct InstractionsView: View {
    @Binding var game: Game
    var body: some View {
        VStack {
            InstructionText(text: "🎯🎯🎯\n put the bulleye as close as you can to")
                .padding(.leading, 30.0)
                .padding(.trailing, 30.0)
            BigNumberText(text: String(game.target))
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
