//
//  SequenceExtensions.swift
//  
//
//  Created by Marc-Antoine Malépart on 2020-12-02.
//

import Foundation

public extension Sequence {
    func count(where predicate: @escaping (Element) throws -> Bool) rethrows -> Int {
        return try reduce(into: 0, { count, element in
            if try predicate(element) {
                count += 1
            }
        })
    }
}

public extension Sequence where Element: Equatable {
    func count(of element: Element) -> Int {
        return count(where: { $0 == element })
    }
}
