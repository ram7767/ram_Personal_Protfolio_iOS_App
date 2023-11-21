//
//  PersonSkills.swift
//  RamProtfolio
//
//  Created by Softasuave on 21/11/23.
//

import Foundation
import SwiftData

@Model
class PersonSkills {
    
    var skill: String
    @Relationship var person: Person?
    
    init(skill: String, person: Person) {
        self.skill = skill
        self.person = person
    }
}
