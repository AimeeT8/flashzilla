//
//  Card.swift
//  Flashzilla
//
//  Created by Aimee Temple on 2024-07-25.
//

import Foundation

struct Card: Codable, Equatable, Hashable, Identifiable {
    
    var id = UUID()
    var prompt: String
    var answer: String
    
    static let example = Card(prompt: "What's a measurement used in the medical field and is the same volume as mililiter", answer: "cc's or cubic centimeters")
}
