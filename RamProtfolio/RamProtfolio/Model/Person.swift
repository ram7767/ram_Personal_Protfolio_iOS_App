//
//  Person.swift
//  RamProtfolio
//
//  Created by Softasuave on 21/11/23.
//

import Foundation
import SwiftData

@Model
class Person {
    
    @Attribute(.unique) var id: String
    var name: String
    var details: String
    
    @Relationship var skills: [PersonSkills]?
    @Relationship var exp: [PersonExperiences]?
    @Relationship var education: [PersonEducation]?
    
    init(id: String, name: String, details: String) {
        self.id = id
        self.name = name
        self.details = details
    }
}
