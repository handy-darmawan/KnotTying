//
//  SwiftUIView.swift
//  
//
//  Created by ndyyy on 21/02/24.
//

import SwiftUI

struct KnotGrid: View {
    var columns: [GridItem] =
        [GridItem(.adaptive(minimum: 250))]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(Knot.data, id: \.name) { knot in
                    NavigationLink(destination: DetailView(knot: knot)) {
                        VStack {
                            knot.knotImage
                                .resizable()
                                .frame(width: 200, height: 200)
                            
                            Text(knot.name)
                                .title3()
                                .foregroundColor(.black)
                        }
                        
                    }
                }
            }
        }
        .frame(maxHeight: .infinity)
    }

}
