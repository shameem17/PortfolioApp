//
//  AllProjects.swift
//  Portfolio
//
//  Created by Shameem on 2/11/24.
//

import SwiftUI

struct AllProjects: View {
    var projects: [PersonalProject]
    @State var showProjects = false
    @State var showDetails: Bool = false
    @State var selected : PersonalProject?
    var body: some View {
        VStack(alignment: .leading){
            HStack(spacing: 10){
                Image(systemName: "rectangle.on.rectangle.badge.gearshape")
                    .font(.title)
                
                Text("Projects")
                    .font(.title)
                    .bold()
                
                
                Button(action: {
                    withAnimation(.easeInOut(duration: 0.35)){
                        self.showProjects.toggle()
                    }
                    
                },
                       
                       label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showProjects ? .zero : Angle(degrees: 180))
                    
                }).buttonStyle(PlainButtonStyle())
                Spacer()
            }.opacity(0.9)
            
            
            if(self.showProjects){
                LazyVGrid(columns: [GridItem()], content: {
                    ForEach(projects) { project in
                        ProjectView(project: project)
                            .sheet(isPresented: $showDetails, content: {
                                ProjectDetails(project: selected ?? AppViewModel().projects[0])
                            })
                            .onTapGesture {
                                //print("tapped, project= \(project)")
                                self.selected = project
                                self.showDetails.toggle()
                                // }
                                
                            }
                    }
                })
                .padding(.top, 15)
            }
        }
    }
}

#Preview {
    AllProjects(projects: AppViewModel().projects)
}
