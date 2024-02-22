//
//  Knot+Ext.swift
//
//
//  Created by ndyyy on 19/02/24.
//

import SwiftUI
import Foundation

extension Knot {
    static var data: [Knot] = [
        Knot(name: "Cow Knot",
             steps: [
                Step(name: "Step 1",
                     description: "Prepare the rope and a pole"),
                Step(name: "Step 2",
                     description: "Pass the rope around the object"),
                Step(name: "Step 3",
                     description: "Pass the rope around the object"),
                Step(name: "Step 4",
                        description: "Back around itself"),
                Step(name: "Step 5",
                        description: "Around the object in the reverse direction"),
                Step(name: "Step 6",
                        description: "Down beside itself")
             ],
             knotImage: Image(.cowKnot6)
        ),
        
        Knot(name: "Clove Knot",
             steps: [
                Step(name: "Step 1",
                     description: "Prepare the rope and a pole"),
                Step(name: "Step 2",
                     description: "Pass the end of the rope around the pole"),
                Step(name: "Step 3",
                        description: "Continue over the standing end"),
                Step(name: "Step 4",
                        description: "Around the pole a second time"),
                Step(name: "Step 5",
                        description: "Tidy up the rope"),
                Step(name: "Step 6",
                        description: "Thread the end under itself"),
                Step(name: "Step 7",
                        description: "Pull tight to form the clove hitch")
             ],
             knotImage: Image(.cloveKnot7)
        ),
    ]
}
