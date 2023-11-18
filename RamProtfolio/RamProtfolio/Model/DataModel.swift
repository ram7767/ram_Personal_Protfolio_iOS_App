//
//  SwiftDataFile.swift
//  RamProtfolio
//
//  Created by Softasuave on 18/11/23.
//

import Foundation
import SwiftData

@Model
final class Persons {
    var id: Int
    var name: String
    var details: String
    var skills: [PersonSkills]?
    var exp: [PersonExperiences]?
    var education: [PersonEducation]?
    
    init(id: Int, name: String, details: String, skills: [PersonSkills]? = nil, exp: [PersonExperiences]? = nil, education: [PersonEducation]? = nil) {
        self.id = id
        self.name = name
        self.details = details
        self.skills = skills
        self.exp = exp
        self.education = education
    }
}

@Model
class PersonSkills {
    @Attribute(.unique) let uuid: String
    var skill: String

    init(skill: String) {
        self.uuid = UUID().uuidString
        self.skill = skill
    }
}

@Model
class PersonExperiences {
    @Attribute(.unique) let uuid: String
    var nameCompany: String
    var desigination: String
    var startDate: String
    var endDate: String
    var acheivement: String
    @Relationship()
    
    init(nameCompany: String, desigination: String, startDate: String, endDate: String, acheivement: String) {
        self.uuid = UUID().uuidString
        self.nameCompany = nameCompany
        self.desigination = desigination
        self.startDate = startDate
        self.endDate = endDate
        self.acheivement = acheivement
    }
}

@Model
class PersonEducation {
    @Attribute(.unique) let uuid: String
    var schoolName: String
    var passOutYear: String
    var gpa: String
    var acheivment: String

    
    init(schoolName: String, passOutYear: String, gpa: String, acheivment: String) {
        self.uuid = UUID().uuidString
        self.schoolName = schoolName
        self.passOutYear = passOutYear
        self.gpa = gpa
        self.acheivment = acheivment
    }
}
