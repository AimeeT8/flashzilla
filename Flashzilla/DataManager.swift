//
//  DataManager.swift
//  Flashzilla
//
//  Created by Aimee Temple on 2024-07-29.
//

import Foundation


struct DataManager {
    static let savePath = URL.documentsDirectory.appending(path: "SaveData")
    
    static func load() -> [Card]{
        if let data = try? Data(contentsOf: savePath)  {
            if let decoded = try? JSONDecoder().decode([Card].self, from: data) {
                return decoded
            }
        }
        return []
    }
    
    static func save(_ cards: [Card]) {
        if let data = try? JSONEncoder().encode(cards) {
            try? data.write(to: savePath, options: [.atomic, .completeFileProtection])
        }
    }
}











































