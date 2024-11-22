//
//  BottomButtons.swift
//  Portfolio
//
//  Created by Shameem on 11/9/24.
//

import SwiftUI

struct BottomButtons: View {
    @State var showContact: Bool = false
    @State var showCard: Bool = false
    @State var show: Bool
    var body: some View {
        VStack(spacing: 20){
            
            if self.show{
                Button(action: {
                    withAnimation(.easeInOut(duration: 3)){
                        self.showContact.toggle()
                    }
                   
                }, label: {
                    Image(systemName: "phone")
                        .resizable()
                        .frame(width: 35, height: 25).padding(18)
                })
                .background(.blue.opacity(0.75))
                .foregroundColor(.white)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                 
                
                Button(action: {
                    withAnimation(.easeInOut(duration: 3)){
                        self.showCard.toggle()
                    }
                   
                }, label: {
                    Image(systemName: "person.text.rectangle")
                        .resizable()
                        .frame(width: 35, height: 25).padding(18)
                })
                .background(.blue.opacity(0.75))
                .foregroundColor(.white)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                
            }
            
            
            Button(action: {
                withAnimation(.easeInOut(duration: 0.35)){
                    self.show.toggle()
                }
              
            },
                   label: {
                Image(systemName: "chevron.up")
                    .resizable()
                    .frame(width: 35, height: 25).padding(18)
            })
            .background(.blue.opacity(0.75))
            .foregroundColor(.white)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .rotationEffect(show ? .degrees(-180) : .zero)
        }
        
        .sheet(isPresented: $showCard, content: {
            CardView()
        })
        
        .sheet(isPresented: $showContact, content: {
            ContactInfoView()
        })
     
    }
}

#Preview {
    BottomButtons(show: false)
        .colorScheme(.dark)
}

struct CardView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            Color(.systemBackground).opacity(0.9)
            VStack(spacing: 35){
                Text("My Card")
                    .font(.title)
                    .bold()
                    .opacity(0.65)
                
                Image("cardFront")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width - 20, height: 220)
           
                Image("cardBack")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width - 20, height: 220)
                
            }
            
            VStack{
                HStack{
                    Spacer()
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    },
                           label: {
                        Text("Done")
                            .font(.system(size: 18))
                            .fontWeight(.semibold)
                    })
                }.padding(.trailing, 30)
                Spacer()
            }.padding(.top, 20)
        }
        
    }
}


struct ContactInfoView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            Color(.systemBackground).opacity(0.9)
            
            VStack(alignment: .leading){
                Text("Contact Information")
                    .font(.largeTitle)
                    .opacity(0.7)
                
                Text("Phone Number: +8801788381680")
                    .padding(.bottom, 2)
                Text("Email: shameem@mirinfosys.com")
                    .padding(.bottom, 2)
                Text("Address: 42/Ka Mina Manjil, Multijoddha Goli,\nMohakhali, Dhaka-1216")
            }.font(.system(size: 18))
                .opacity(0.8)
            
            
            
            
            VStack{
                HStack{
                    Spacer()
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    },
                           label: {
                        Text("Done")
                            .font(.system(size: 18))
                            .fontWeight(.semibold)
                    })
                }.padding(.trailing, 30)
                Spacer()
            }.padding(.top, 20)
            
            
        }
    }
}
