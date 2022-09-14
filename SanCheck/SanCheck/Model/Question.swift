//
//  Question.swift
//  SanCheck
//
//  Created by Moon Yeji on 2022/09/14.
//

import UIKit

struct Question {
    
    let question: String
    let options: [Option]
    let image: UIImage?
}

struct Option {
    var answer: String
    var value: String
}
