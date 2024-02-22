//
//  Knot.swift
//
//
//  Created by ndyyy on 19/02/24.
//

import Foundation
import SwiftUI

struct Knot {
    var name: String
    var steps: [Step]
    var knotImage: Image
}

struct Step {
    var name: String
    var description: String
}
