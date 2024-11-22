//
//  SkillView.swift
//  Portfolio
//
//  Created by Shameem on 11/9/24.
//

import SwiftUI

struct SkillView: View {
    var skill: Skill
    var width: CGFloat = 120
    var body: some View {
        VStack{
            Image(systemName: skill.image)
                .font(.system(size: 35, weight: .medium))
                .opacity(0.7)
            
            Text(skill.skillName)
                .font(.system(size: 16))
                .multilineTextAlignment(.center)
                .padding(.top, 3)
            
        }
        .padding()
        .frame(width: width, height: 130)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .opacity(0.075)
        )
    }
}

#Preview {
    SkillView(skill: AppViewModel().skills[0])
}
