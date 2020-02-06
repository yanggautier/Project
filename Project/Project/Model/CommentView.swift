//
//  CommentView.swift
//  Project
//
//  Created by Guole YANG on 30/01/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//

import Foundation
import SwiftUI


struct CommentView{
    
    var commentaire: Comment
    
    
}

struct Comment{
    
    var userId: Int
    var siteId: Int
    var writer: String
    var postDate: Date
    var content: String
    var rate: Int
}

enum Rate: Int{
    case one = 1
    case two = 2
    case three = 3
    case four = 4
    case five  = 5
}
