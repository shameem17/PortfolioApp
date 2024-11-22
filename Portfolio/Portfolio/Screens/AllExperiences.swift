//
//  AllExperiences.swift
//  Portfolio
//
//  Created by Shameem on 11/9/24.
//

import SwiftUI

struct AllExperiences: View {
    var experiences: [Experience]
    @State var showExperiences: Bool = false
    var body: some View {
        VStack(alignment: .leading){
            HStack(spacing: 10){
                Image(systemName: "chart.line.uptrend.xyaxis")
                    .font(.title)
                
                Text("Experiences")
                    .font(.title)
                    .bold()
                    
                
                Button(action: {
                    withAnimation(.easeInOut(duration: 0.35)){
                        self.showExperiences.toggle()
                    }
                   
                },
                       
                       label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showExperiences ? .zero : Angle(degrees: 180))
                    
                }).buttonStyle(PlainButtonStyle())
                Spacer()
            }.opacity(0.9)
            
            if self.showExperiences{
                ForEach(experiences) { experience in
                    ExperienceView(experience: experience)
                        .padding(.bottom, 10)
                }
            }
        }
    }
}

#Preview {
    AllExperiences(experiences: AppViewModel().experiences)
}
