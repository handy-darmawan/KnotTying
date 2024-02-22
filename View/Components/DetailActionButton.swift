//
//  DetailActionButton.swift
//
//
//  Created by ndyyy on 21/02/24.
//

import SwiftUI

struct DetailActionButton: View {
    @Binding var isPlaying: Bool
    var value: Bool
    var button: (() -> Void)
    var imageName: String
    
    var body: some View {
        Button {
            button()
            isPlaying = value
        } label: {
            Image(systemName: imageName)
                .styling()
        }
    }
}
