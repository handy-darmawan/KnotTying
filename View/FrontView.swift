//
//  FrontView.swift
//  KnotTying
//
//  Created by ndyyy on 19/02/24.
//

import SwiftUI

struct FrontView: View {
    @Binding var page: Int
    
    var body: some View {
        VStack {
            NavigationButton(page: $page, gotoPage: 2, systemImageName: "info.circle", position: .trailing)
        
            VStack {
                Text("Knot Tying")
                    .largeTitle()
                    .padding(.bottom, 45)
                    .padding(.top, -120)
                
                Image("KnotTying")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .padding(.bottom, 30)
                
                CustomButton(page: $page, gotoPage: 3, systemImageName: "play.fill", position: .center)
                    .padding(.top, 30)
            }
            .frame(maxHeight: .infinity, alignment: .center)
        }
    }
}



