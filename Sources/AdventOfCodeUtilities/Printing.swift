//
//  Printing.swift
//  
//
//  Created by Marc-Antoine Malépart on 2020-11-26.
//

import Foundation

public enum TitleLevel: Character {
    case title1 = "="
    case title2 = "-"
    case title3 = "."
}

public func printTitle(_ title: String, level: TitleLevel, terminator: String = "\n") {
    print(title)
    print(String(repeating: level.rawValue, count: title.count), terminator: terminator)
}
