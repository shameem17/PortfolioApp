//
//  Portfolio.swift
//  Portfolio
//
//  Created by Shameem on 10/9/24.
//

import Foundation
import SwiftUI

enum EducationLabel: String{
    case ssc = "SSC"
    case hsc = "HSC"
    case bsc = "BSc"
}

struct Skill: Identifiable{
    let id = UUID()
    let skillName: String
    let image: String
}

struct Experience: Identifiable{
    let id = UUID()
    let companyName: String
    let role: String
    let areaofWork: [String]
    let duration: String
}

struct Education: Identifiable{
    let id = UUID()
    let institutionName: String
    let label: EducationLabel
    let departmnet: String
    let stratYear: String
    let endYear: String
    let gcpa: Double
    let outOf: Double
}

struct PersonalProject: Identifiable{
    let id = UUID()
    let name: String
    let description: String
    let moreDescription: String
    let technologyUsed: [TechStack]
    let projectLink: [ProjectLink]
    let videoId: String?
    
}

struct Portfolio{
    let name: String
    let image: String
    let tagLine: String
    let description: String
    let location: String = "Dhaka, Bangladesh"
}

struct TechStack: Identifiable{
    let id = UUID()
    let name: String
    let color: Color
}

struct ProjectLink: Identifiable{
    let id = UUID()
    let linkImage: String
    let link: String
}
