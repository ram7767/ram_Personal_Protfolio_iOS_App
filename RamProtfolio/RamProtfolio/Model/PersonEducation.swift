//
//  PersonEducation.swift
//  RamProtfolio
//
//  Created by Softasuave on 21/11/23.
//

import Foundation
import SwiftData

@Model
class PersonExperiences {

    var nameCompany: String
    var desigination: String
    var startDate: String
    var endDate: String
    var acheivement: String
    
    @Relationship var person: Person?
    
    init(nameCompany: String, desigination: String, startDate: String, endDate: String, acheivement: String, person: Person) {
        self.nameCompany = nameCompany
        self.desigination = desigination
        self.startDate = startDate
        self.endDate = endDate
        self.acheivement = acheivement
        self.person = person
    }
}
