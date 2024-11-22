//
//  EducationView.swift
//  Portfolio
//
//  Created by Shameem on 11/9/24.
//

import SwiftUI

struct EducationView: View {
    var education: Education
    var body: some View {
        VStack(alignment: .leading){
            Circle()
                .frame(width: 12, height: 12)
                .opacity(0.65)
            
            HStack{
                RoundedRectangle(cornerRadius: 12)
                    .frame(width: 6)
                    .padding(.leading, 3)
                    .opacity(0.65)
                VStack(alignment: .leading){
                    Text(education.label.rawValue + " in " + education.departmnet)
                        .lineLimit(3, reservesSpace: false)
                        .font(.system(size: 20))
                        .bold()
                        .opacity(0.8)
                    
                    
                    Text(education.institutionName)
                        .font(.system(size: 18))
                        .lineLimit(3)
                        .opacity(0.7)
                    
                    Text("CGPA: \(education.gcpa, specifier: "%0.2f")/\(education.outOf, specifier: "%0.2f")")
                        .font(.system(size: 16))
                        .opacity(0.65)
                    
                    Text(education.stratYear + " - " + education.endYear)
                        .font(.system(size: 16))
                        .opacity(0.65)
                }
            }
        }.fixedSize(horizontal: false,
                    vertical: true)
    }
}

#Preview {
    EducationView(education: AppViewModel().educations[0])
}
