//
//  Text+Ext.swift
//
//
//  Created by ndyyy on 19/02/24.
//

import SwiftUI

extension Text {
    func largeTitle() -> some View {
        self.font(.largeTitle)
            .fontWeight(.semibold)
    }
    
    func title() -> some View {
        self.font(.title)
            .fontWeight(.semibold)
    }
    
    func title3() -> some View {
        self.font(.title3)
            .padding(.vertical)
    }
    
    func title2() -> some View {
        self.font(.title2)
            .padding(.vertical)
    }
}


extension Image {
    func styling() -> some View {
        self
            .font(.system(size: 45))
            .padding()
            .padding([.horizontal], 30)
            .background(.blue)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 30))
    }
    
    func headerStyling() -> some View {
        self
            .font(.title)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Circle())
    }
}
