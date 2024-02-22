//
//  IntroductionView.swift
//
//
//  Created by ndyyy on 19/02/24.
//

import SwiftUI

struct IntroductionView: View {
    @Binding var page: Int
    
    var body: some View {
        VStack {
            NavigationButton(page: $page, gotoPage: 1, systemImageName: "arrow.left.circle", position: .leading)
            
            VStack {
                Text("What is Knot Tying?")
                    .title()
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.bottom, 30)
                
                VStack(alignment: .leading) {
                    Text("Knot tying is crucial for sailing, climbing, and fishing. Whether securing sails or anchoring, knowing knots is vital. It's essential for camping and survival. Learning to tie various knots effectively is key.")
                        .title3()
                    
                    Text("Knots secure ropes, tie things, and aid in rescues. Each knot serves a purpose, from basic to complex. Understanding the right knot boosts safety and efficiency. Mastering knot tying is valuable in many situations.")
                        .title3()
                    
                    Text("This app is designed for learning knot tying effectively. It's for both beginners and advanced users with step-by-step guides and tutorials.")
                        .title3()
                }
                .frame(maxWidth: .infinity)
                .padding([.horizontal], 30)
                
                Text("Ready to Start?")
                    .title2()
                    .frame(maxWidth: .infinity, alignment: .center)
                
                
                CustomButton(page: $page, gotoPage: 3, systemImageName: "play.fill", position: .center)
            }
            .frame(maxHeight: .infinity, alignment: .center)
        }
    }
}
