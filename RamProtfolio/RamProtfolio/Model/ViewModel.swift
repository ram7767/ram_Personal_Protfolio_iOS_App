//
//  SwiftDataFile.swift
//  RamProtfolio
//
//  Created by Softasuave on 18/11/23.
//

import Foundation
import SwiftData

class ModelData: Identifiable {
    
    var id = UUID()
    var name = "Ram"
    var jobTitle = "iOS Developer"
    var description = ""
    var profileImage = ""
    var skills = ""
    var education = [Education]()
    var experience = [Experience]()
    var iocns = 0
    
    init(id: UUID = UUID(), name: String = "Ram", jobTitle: String = "iOS Developer", description: String = "", profileImage: String = "", skills: String = "", education: [Education] = [Education](), experience: [Experience] = [Experience](), iocns: Int = 0) {
        self.id = id
        self.name = name
        self.jobTitle = jobTitle
        self.description = description
        self.profileImage = profileImage
        self.skills = skills
        self.education = education
        self.experience = experience
        self.iocns = iocns
    }
}

class Education {
    var instituteName = "institute"
    var startingYear = "2020"
    var endYear = "2023"
    var percentage = 90.5
    var acheivments = "Write some achievments"
    
    init(instituteName: String = "institute", startingYear: String = "2020", endYear: String = "2023", percentage: Double = 90.5, acheivments: String = "Write some achievments") {
        self.instituteName = instituteName
        self.startingYear = startingYear
        self.endYear = endYear
        self.percentage = percentage
        self.acheivments = acheivments
    }
}


class Experience {
    var jobTitle = "iOS Developer"
    var startingDate = "2023"
    var endDate = "2024"
    var acheivements = "write some achievemnts"
    
    init(jobTitle: String = "iOS Developer", startingDate: String = "2023", endDate: String = "2024", acheivements: String = "write some achievemnts") {
        self.jobTitle = jobTitle
        self.startingDate = startingDate
        self.endDate = endDate
        self.acheivements = acheivements
    }
}

