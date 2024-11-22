//
//  ContentView.swift
//  Portfolio
//
//  Created by Shameem on 10/9/24.
//

import SwiftUI

struct PortfolioView: View {
    var appModel: AppViewModel = AppViewModel()
    @State var showButtons: Bool = false
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    Header(portfolio: appModel.portfolio)
                    
                    AllSkills(skills: appModel.skills, width: UIScreen.main.bounds.width - 48)
                        .padding(.vertical, 20)
                    
                    AllExperiences(experiences: appModel.experiences)
                        .padding(.bottom, 20)
                    
                    AllEducations(educations: appModel.educations)
                        .padding(.bottom, 20)
                   
                    AllProjects(projects: appModel.projects)
                        .padding(.bottom, 20)
                    
                }
                .padding(.horizontal, 20)
                
                
              
            }
            
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    BottomButtons(show: false)
                        .padding(.trailing, 20)
                }
                .padding(.bottom, 20)
            }
            
            
            
        }
    }
}

#Preview {
    
    PortfolioView()
        .colorScheme(.dark)
    
}


