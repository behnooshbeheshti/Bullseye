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
    
    func testExample() throws {
        XCTAssertEqual(game.points(sliderValue: 50), 999)
    }
    
    
}
