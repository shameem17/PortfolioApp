//
//  AllSkills.swift
//  Portfolio
//
//  Created by Shameem on 11/9/24.
//

import SwiftUI

struct AllSkills: View {
    var skills: [Skill]
    var width: CGFloat
    @State var showSkills: Bool = false
    
    var body: some View {
        VStack(alignment: .leading){
            HStack(spacing: 10){
                Image(systemName: "lightbulb.max")
                    .font(.title)
                
                Text("Skills")
                    .font(.title)
                    .bold()
                    
                
                Button(action: {
                    withAnimation(.easeInOut(duration: 0.35)){
                        self.showSkills.toggle()
                    }
                   
                },
                       
                       label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showSkills ? .zero : Angle(degrees: 180))
                    
                }).buttonStyle(PlainButtonStyle())
                Spacer()
            }.opacity(0.9)
            
            
            if(self.showSkills){
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()], content: {
                    ForEach(skills) { skill in
                        SkillView(skill: skill, width: width / 3 - 8)
                    }
                })
                .padding(.top, 15)
            }
            
            
        }
    }
}

#Preview {
 
        AllSkills(skills: AppViewModel().skills, width: 400 - 48)
            .padding(24)
    
}
