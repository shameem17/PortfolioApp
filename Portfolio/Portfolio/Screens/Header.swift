//
//  Header.swift
//  Portfolio
//
//  Created by Shameem on 10/9/24.
//

import SwiftUI

struct Header: View {
    var portfolio: Portfolio
    var body: some View {
        VStack{
            Image(portfolio.image)
                .resizable()
                .frame(width: 115, height: 130)
                .clipShape(
                    Circle()
                )
                .padding(5)
                .background(
                    Circle()
                        .opacity(0.65)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                )
            
            Text(portfolio.name)
                .font(.system(size: 28))
                .bold()
            
            Text(portfolio.tagLine)
                .opacity(0.7)
            
            HStack{
                Image(systemName: "location.fill")
                Text(portfolio.location)
            }.font(.footnote)
            .opacity(0.6)
            
            Text(portfolio.description)
                .font(.title3)
                .lineSpacing(4)
                .padding(.top, 5)
                
        }
    }
}

#Preview {
    Header(portfolio: AppViewModel().portfolio)
}
