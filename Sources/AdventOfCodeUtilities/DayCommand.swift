//
//  DayCommand.swift
//  AdventOfCodeUtilities
//
//  Created by Marc-Antoine Malépart on 2020-11-26.
//

import Foundation
import ArgumentParser

@available(macOS 10.15, *)
public protocol DayCommand: AsyncParsableCommand {
    var puzzleInputURL: URL { get set }
}

@available(macOS 10.15, *)
public extension DayCommand {
    func readFile() throws -> String {
        let contents = try String(contentsOf: puzzleInputURL, encoding: .utf8)
        return contents.trimmingCharacters(in: .newlines)
    }
    
    func readLines() throws -> [String] {
        return try readFile().components(separatedBy: .newlines)
    }
    
    func readData() throws -> Data {
        return try Data(contentsOf: puzzleInputURL)
    }
}
