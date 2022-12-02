import Foundation

public struct AdventOfCode2022 {



    public init() {}

    func loadInput(name: String) throws -> Data {
        guard let url = Bundle.module.url(forResource: name, withExtension: "txt") else {
            throw AOCError.couldNotLoadFile
        }
        return try Data(contentsOf: url)
    }

}

public enum AOCError: Error {
    case couldNotLoadFile
}
