//
//  Post.swift
//  CloneApp
//
//  Created by Nuriddin Musojonov on 01/08/21.
//

import Foundation

class Post {
    var name:String?
    var imgAvatar:String?
    var imgPost1:String?
    var imgPost2:String?
    
    init(name:String,imgAvatar:String,imgPost1:String,imgPost2:String) {
        self.name = name
        self.imgAvatar = imgAvatar
        self.imgPost1 = imgPost1
        self.imgPost2 = imgPost2
    }
}
