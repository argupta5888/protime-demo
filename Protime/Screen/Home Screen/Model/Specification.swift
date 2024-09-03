//
//  Specification.swift
//  Protime
//
//  Created by Ashok Gupta on 07/08/24.
//

import Foundation

struct Specification : Codable {
    let color : String?
    let capacity : String?

    enum CodingKeys: String, CodingKey {

        case color = "color"
        case capacity = "capacity"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        color = try values.decodeIfPresent(String.self, forKey: .color)
        capacity = try values.decodeIfPresent(String.self, forKey: .capacity)
    }
    
    init(color: String?, capacity: String?) {
        self.color = color
        self.capacity = capacity
    }

}
