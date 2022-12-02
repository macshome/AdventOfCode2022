import XCTest
@testable import AdventOfCode2022

final class Day1Tests: XCTestCase {

    let rawString = "1000\n2000\n3000\n\n4000\n\n5000\n6000\n\n7000\n8000\n9000\n\n10000\n"

    let parsedString = [6000, 4000, 11000, 24000, 10000]
    let part1Answer = 24000
    let part2Answer = 45000
    var sut: Day1!
    
    override func setUpWithError() throws {
        sut = try Day1(input: "Day1-Test")
    }
    
    override func tearDownWithError() throws {
        sut = nil
    }
    
    func testThrowsInit() {
        XCTAssertThrowsError(try Day1(input: "foo")) { error in
            XCTAssertEqual(error as? AOCError, AOCError.couldNotLoadFile)
        }
    }
    
    func testParseInput() throws {
        let result = try XCTUnwrap(sut.parseInput(sut.data))
        XCTAssertEqual(result, rawString)
    }

    func testParseString() throws {
        let result = sut.parseString(rawString)
        XCTAssertEqual(result, parsedString)
    }

    func testSolvePart1() {
        XCTAssertEqual(part1Answer, sut.solvePart1())
    }

    func testSolvePart2() {
        XCTAssertEqual(part2Answer, sut.solvePart2())
    }
}
