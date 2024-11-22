//
//  AllEducations.swift
//  Portfolio
//
//  Created by Shameem on 11/9/24.
//

import SwiftUI

struct AllEducations: View {
    var educations: [Education]
    
    @State var showEducation: Bool = false
    var body: some View {
        VStack(alignment: .leading){
            HStack(spacing: 10){
                Image(systemName: "graduationcap")
                    .font(.title)
                
                Text("Educations")
                    .font(.title)
                    .bold()
                
                
                Button(action: {
                    withAnimation(.easeInOut(duration: 0.35)){
                        self.showEducation.toggle()
                    }
                    
                },
                       
                       label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showEducation ? .zero : Angle(degrees: 180))
                    
                }).buttonStyle(PlainButtonStyle())
                Spacer()
            }.opacity(0.9)
            
            if self.showEducation{
                ForEach(educations) { education in
                    EducationView(education: education)
                        .padding(.bottom, 10)
                }
            }
        }
        
    }
}

#Preview {
    AllEducations(educations: AppViewModel().educations)
}
