//
//  ProjectDetails.swift
//  Portfolio
//
//  Created by Shameem on 2/11/24.
//

import SwiftUI

struct ProjectDetails: View {
    var project: PersonalProject
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        //NavigationStack{
            VStack{
                VStack(alignment: .trailing, content: {
                    HStack{
                        Spacer()
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Text("Done")
                                .font(.title2)
                        })
                    }
                    .padding(.trailing, 20)
                   
                })
                Spacer()
                Text(project.name)
                    .font(.custom("Montserrat-Bold", size: 34))
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
                       
                    }
                })
                VStack{
                    Text(project.description)
                        .foregroundStyle(.opacity(0.7))
                        .multilineTextAlignment(.center)
                    Text(project.moreDescription)
                        .multilineTextAlignment(.leading)
                }
                .padding(.horizontal, 15)
                if project.videoId != nil{
                    YouTubeView(videoID: project.videoId!)
                        .padding(.bottom, 20)
                }else{
                    if let url = URL(string: project.projectLink[0].link){
                        GeneralWebView(url: url)
                    }
                }
               
                Spacer()
                
            }
        //}
        
    }
}

#Preview {
    ProjectDetails(project: AppViewModel().projects[0])
}
