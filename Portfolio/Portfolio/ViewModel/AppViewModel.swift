//
//  AppViewModel.swift
//  Portfolio
//
//  Created by Shameem on 10/9/24.
//

import Foundation

final class AppViewModel{
    let portfolio: Portfolio = Portfolio(name: "Shameem Ahammed", image: "myImage", tagLine: "Software Engineer", description: "iOS Developer with 1+ years of experience in developing, testing and distrubting iOS app.")
    
    let skills: [Skill] = [
        Skill(skillName: "iOS Developer", image: "iphone.gen3"), Skill(skillName: "Swift", image: "swift"), 
        Skill(skillName: "SwiftUI", image: "swiftdata"), Skill(skillName: "Problem Solving", image: "apple.terminal.on.rectangle")
    ]
    
    let experiences: [Experience] = [
        Experience(companyName: "Mir Info Systems Ltd.", role: "Software Engineer", areaofWork: ["Swift", "iOS Development", "Software Delevopment"], duration: "October 2023 - Present")
    ]
    let educations: [Education] = [
        Education(institutionName: "Khulna Universtiy of Engineering & Technology", label: .bsc, departmnet: "Computer Science and Engineering", stratYear: "2018", endYear: "2023", gcpa: 3.53, outOf: 4.00),
        Education(institutionName: "Kaligonj College", label: .hsc, departmnet: "Science", stratYear: "2015", endYear: "2017", gcpa: 5.00, outOf: 5.00),
        Education(institutionName: "Sreekala Secondary School", label: .ssc, departmnet: "Science", stratYear: "2009", endYear: "2015", gcpa: 5.00, outOf: 5.00)
    ]
    
    let projects: [PersonalProject] = [
        PersonalProject(name: "Portfolio App", description: "My portfolio app using SwiftUI", moreDescription: "An iOS app showcases my portfolio. Animation and transition between screens were build using SwiftUI.\n Language & frameworks: SwiftUI\nArchitecture: MVVM", technologyUsed: [TechStack(name: "SwiftUI", color: .blue), TechStack(name: "MVVM", color: .green)], projectLink: [ProjectLink(linkImage: "github", link: "https://github.com/shameem17/PortfolioApp"), ProjectLink(linkImage: "youtube", link: "https://youtube.com")], videoId: nil),
        
        PersonalProject(name: "Skitto iOS App", description: "Skitto iOS app in release version 4.6.0", moreDescription: "Major Release Contribution: 4.6.0 & 4.7.0. Build several new features like Biosocpe, Content Streaming", technologyUsed: [TechStack(name: "Swift", color: .red), TechStack(name: "UIKit", color: .cyan), TechStack(name: "API", color: .brown)], projectLink: [ ProjectLink(linkImage: "appStore", link: "https://skittu.page.link/home")], videoId: nil),
        
        PersonalProject(name: "LiveMatch", description: "Loaction based dating app", moreDescription: "A location-based dating app with messaging feature.\nFeautes:\n• SignIn, SignUp, Phone Number authentication, Reset Password\n• Send, Accept and Reject Friend Request\n• Search nearby friends and active users for instant meetup\n• Live Message with friends\n• Update user profile\nLanguage & frameworks: Swift, UIKit, Firebase, CoreLocation, UserDefaults\nArchitecture: MVVM, Combine", technologyUsed: [TechStack(name: "Swift", color: .red), TechStack(name: "Firebase", color: .orange)], projectLink: [ProjectLink(linkImage: "youtube", link: "https://www.youtube.com/watch?v=LqO61EGOhOw")], videoId: "LqO61EGOhOw")
       // Project(name: <#T##String#>, description: <#T##String#>, technologyUsed: <#T##[String]#>, projectLink: <#T##String#>)
    ]
}
