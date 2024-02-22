//
//  HomeView.swift
//
//
//  Created by ndyyy on 19/02/24.
//

import SwiftUI

struct HomeView: View {
    @Binding var page: Int
    var body: some View {
        NavigationStack {
            VStack {
                NavigationButton(page: $page, gotoPage: 1, systemImageName: "arrow.left.circle", position: .leading)
                
                Text("Knot Tying")
                    .largeTitle()
                    .frame(alignment: .top)
                    .padding(.bottom, 30)

                KnotGrid()
            }
        }
    }
}
