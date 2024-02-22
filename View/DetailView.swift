//
//  DetailView.swift
//  KnotTying
//
//  Created by ndyyy on 19/02/24.
//

import SwiftUI

struct DetailView: View {
    var knot: Knot
    private let timer = Timer.publish(every: 1.5, on: .main, in: .common).autoconnect()
    
    @State var step: Int = 1 {
        didSet {
            setImageName()
        }
    }
    @State var imageName: String = ""
    @State var isPlaying: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Image(imageName)
                    .resizable()
                    .frame(width: 600, height: 450)
                    .padding()
                    .padding(.top, -0.05 * geometry.size.height)
                    .onReceive(timer) { _ in
                        if isPlaying {
                            if step < knot.steps.count {
                                nextButton()
                            } else {
                                isPlaying = false
                            }
                        }
                    }
                
                Text(knot.steps[step-1].description)
                    .font(.title)
                    .padding()
                
                
                //back, next, and play button
                HStack(spacing: 0.15 * geometry.size.width) {
                    DetailActionButton(isPlaying: $isPlaying, value: false, button: previousButton, imageName: "arrow.left.circle.fill")
                    DetailActionButton(isPlaying: $isPlaying, value: true, button: resetImage,  imageName: "play.fill")
                    DetailActionButton(isPlaying: $isPlaying, value: false, button: nextButton, imageName: "arrow.right.circle.fill")
                }
                .padding(.top, 0.05 * geometry.size.height)
            }
            .onAppear {
                setImageName()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .navigationTitle(knot.name)
        }
    }
}


//MARK: - Actions
private extension DetailView {
    func nextButton() {
        step = (step == knot.steps.count) ? knot.steps.count : (step+1)
        setImageName()
    }
    
    func previousButton() {
        step = (step-1 == 0) ? 1 : (step-1)
        setImageName()
    }
    
    func setImageName() {
        imageName = "\(knot.name) \(step)"
    }
    
    func resetImage() {
        step = 1
        setImageName()
    }
}
