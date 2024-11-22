//
//  ProjectView.swift
//  Portfolio
//
//  Created by Shameem on 2/11/24.
//

import SwiftUI

struct ProjectView: View {
    var project: PersonalProject
    var body: some View {
        VStack(alignment: .leading){
            
            Text(project.name)
                .font(.system(size: 24))
                .multilineTextAlignment(.leading)
                .padding(.top, 3)
            
            Text(project.description)
                .font(.system(size: 16))
                .multilineTextAlignment(.leading)
                .lineLimit(3)
                .opacity(0.5)
            
            HStack(content: {
                ForEach(project.technologyUsed) { tech in
                    Text(tech.name)
                        .padding(.horizontal)
                        .padding(.vertical,5)
                        .background(
                            tech.color
                                .opacity(0.5)
                        )
                        
                }
            })
            
            HStack(content: {
                ForEach(project.projectLink) { link in
                    Button(action: {
                        if let url = URL(string: link.link) {
                            print("clicked=\(link.link)")
                            UIApplication.shared.open(url)
                        }
                    }, label: {
                        Image(uiImage: UIImage(named: link.linkImage) ?? UIImage(resource: .portfolio))
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(5)
                            .background(
                                Circle()
                                    .fill(.white.opacity(0.5))
                                
                            )
                    })
                   
                }            })
           
            
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(20)

        .background(
            RoundedRectangle(cornerRadius: 12)
                .opacity(0.075)
        )
        
    }
}

#Preview {
    ProjectView(project: AppViewModel().projects[0])
}
