//
//  PersonExp.swift
//  RamProtfolio
//
//  Created by Softasuave on 21/11/23.
//

import Foundation
import SwiftData

@Model
class PersonEducation {
    var schoolName: String
    var passOutYear: String
    var gpa: String
    var acheivment: String
    @Relationship var person: Person?

    init(schoolName: String, passOutYear: String, gpa: String, acheivment: String, person: Person) {
        self.schoolName = schoolName
        self.passOutYear = passOutYear
        self.gpa = gpa
        self.acheivment = acheivment
        self.person = person
    }
}
