//
//  ExperienceView.swift
//  Portfolio
//
//  Created by Shameem on 11/9/24.
//

import SwiftUI

struct ExperienceView: View {
    var experience: Experience
    var body: some View {
        VStack(alignment: .leading){
            Circle()
                .frame(width: 12, height: 12)
                .opacity(0.65)
            
            HStack{
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 6)
                    .opacity(0.65)
                    .padding(.leading, 3)
                
                VStack(alignment: .leading){
                    Text(experience.role)
                        .font(.system(size: 22))
                        .bold()
                        .opacity(0.8)
                    
                    Text(experience.companyName)
                        .font(.system(size: 18))
                        .opacity(0.75)
                    
                    Text(experience.duration)
                        .font(.system(size: 14))
                        .opacity(0.5)
                    
                    ForEach(experience.areaofWork, id: \.self) { work in
                        Text(work)
                            .font(.footnote)
                            .padding(8)
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .opacity(0.075)
                            )
                        
                    }
                    
                    
                    
                }.padding(.horizontal)
            }
        }.fixedSize()
    }
}

#Preview {
    ExperienceView(experience: AppViewModel().experiences[0])
}
