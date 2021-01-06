//
//  Picture.swift
//  PicsProject
//
//  Created by Pragnya Deshpande on 16/09/20.
//  Copyright © 2020 PragnyaDesh. All rights reserved.
//

import SwiftUI

struct Picture: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var category: Category
    var description: String
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case hyderabad = "hyderabad"
        case manipal = "manipal"
    }
    
}

