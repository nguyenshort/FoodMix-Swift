//
//  Bookmark.swift
//  FoodMix
//
//  Created by Yuan on 05/03/2022.
//

import SwiftUI

struct Bookmark: Identifiable {
    let id: String
    var recipe: Recipe?
    var user: User?
    var createdAt: Float
}
