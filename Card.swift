//
//  Card.swift
//  TugasCard
//
//  Created by MacBook Pro on 10/11/23.
//

import Foundation

struct Card: Codable, Identifiable {
    enum CodingKeys: CodingKey {
        case id
        case name
        case object
    }
    
    var id = UUID()
    var name: String
    var object: String
}
