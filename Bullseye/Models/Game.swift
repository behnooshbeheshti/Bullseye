//
//  Game.swift
//  Bullseye
//
//  Created by Mohsen Hossein pour on 5/22/22.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    
    func points(sliderValue: Int) -> Int {
        var difference: Int
        if sliderValue > self.target {
            difference = sliderValue - self.target
        } else if self.target > sliderValue {
            difference = self.target - sliderValue
        } else {
            difference = 0
        }
        
        var awardedPoints: Int = 100 - difference
        return awardedPoints
    }
}
