//
//  Player.swift
//  Ratings
//
//  Created by 张佳圆 on 4/5/16.
//  Copyright © 2016 Tisoga. All rights reserved.
//

import Foundation
import UIKit

struct Player {
    var name: String?
    var game: String?
    var rating: Int?
    
    init(name: String?, game: String?, rating: Int?) {
        self.name = name
        self.game = game
        self.rating = rating
    }
}