//
//  AdventOfCode2022Tests.swift
//  AdventOfCode2022Tests
//
//  Created by Josh Wisenbaker on 12/1/22.
//

import XCTest
@testable import AdventOfCode2022

final class AdventOfCode2022Tests: XCTestCase {

    private let testBase64 = "MTAwMAoyMDAwCjMwMDAKCjQwMDAKCjUwMDAKNjAwMAoKNzAwMAo4MDAwCjkwMDAKCjEwMDAwCg=="

    private var testData: Data {
        return Data(base64Encoded: testBase64) ?? Data()
    }

    var sut: AdventOfCode2022!

    override func setUpWithError() throws {
        sut = AdventOfCode2022()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testloadData() throws {
        let sutData = try sut.loadInput(name: "Day1-Test")
        XCTAssertEqual(sutData, testData)
    }

    func testThrowsNoLoad() throws {
        XCTAssertThrowsError(try sut.loadInput(name: "Fobar"), "No error was thrown") { error in
            XCTAssertEqual(error as? AOCError, AOCError.couldNotLoadFile)
        }
    }

}
