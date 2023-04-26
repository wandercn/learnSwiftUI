//
//  FishingTests.swift
//  FishingTests
//
//  Created by lsmiao on 2023/4/26.
//

import XCTest
@testable import Fishing

class FishingTests: XCTestCase {
    var game: Game!
    override func setUpWithError() throws {
        game = Game()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        game = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testScorePositive(){
        let guess = game.target + 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score,95)
    }
    
    func testScoreNegative(){
        let guess = game.target - 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score,95)
    }
    
//    func testExample() throws {
//        XCTAssertEqual(game.points(sliderValue: 50), 999)
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//        // Any test you write for XCTest can be annotated as throws and async.
//        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
//        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
//    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
