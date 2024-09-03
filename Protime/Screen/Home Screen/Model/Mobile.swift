//
//  Mobile.swift
//  Protime
//
//  Created by Ashok Gupta on 07/08/24.
//

import Foundation

struct Mobile : Codable {
    var id : String?
    var name : String?
    var specification : Specification?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
        case specification = "data"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        specification = try values.decodeIfPresent(Specification.self, forKey: .specification)
    }
    init(id: String?, name: String?, specification: Specification? = nil){
        self.id = id
        self.name = name
        self.specification = specification
    }
    
    static var mobileExample = Mobile(id: "0", name: "iPhone 12")

}


struct DateModel {
    var date : Date = Date()
    let calendar = Calendar.current
    
    func getCurrentMonth() {
        
    }
    
}
