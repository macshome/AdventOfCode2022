//
//  Day1.swift
//  
//
//  Created by Josh Wisenbaker on 12/1/22.
//

import Foundation

struct Day1 {
    
    let data: Data
    
    init(input: String) throws {
        let loaded = try AdventOfCode2022().loadInput(name: input) 
        self.data = loaded
    }

    func parseInput(_ data: Data) -> String? {
        return String(data: data, encoding: .utf8) ?? nil
    }

    func parseString(_ string: String) -> [Int] {
       return string
            .components(separatedBy: .newlines)
            .split(separator: "")
            .map { $0.compactMap { Int($0) }.reduce(0, +) }
    }

    func solvePart1() -> Int {
        let string = parseInput(data)!
        let array = parseString(string)
        return array.max()!
    }

    func solvePart2() -> Int {
        let string = parseInput(data)!
        let array = parseString(string)
        return array
            .sorted()
            .suffix(3)
            .reduce(0, +)
    }
}
