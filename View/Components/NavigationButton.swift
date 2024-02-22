//
//  NavigationButton.swift
//
//
//  Created by ndyyy on 21/02/24.
//

import SwiftUI

struct NavigationButton: View {
    @Binding var page: Int
    var gotoPage: Int
    var systemImageName: String
    var position: Alignment
    
    var body: some View {
        VStack {
            Button {
                page = gotoPage
            } label: {
                Image(systemName: systemImageName)
                    .headerStyling()
            }
            .frame(maxWidth: .infinity, alignment: position)
            .padding()
        }
    }
}
