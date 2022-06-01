//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Mohsen Hossein pour on 5/24/22.
//

import XCTest
@testable import Bullseye
class BullseyeTests: XCTestCase {
    
    var game: Game!
    
    override func setUpWithError() throws {
        game = Game()
    }
    
    override func tearDownWithError() throws {
        game = nil
    }
    
    func testScorePositive(){
        var guess = game.target + 5
        var score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    func testScoreNegative(){
        var guess = game.target - 5
        var score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
}
