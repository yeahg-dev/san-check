//
//  QuestionViewModel.swift
//  SanCheck
//
//  Created by Moon Yeji on 2022/09/14.
//

import UIKit

struct QuestionViewModel {
    
    let question: String
    let options: [String]
    let image: UIImage?
    var selectedOption: String?
    
    var isSelected: Bool {
        if let _ = selectedOption {
            return true
        } else {
            return false
        }
    }
    
    init(question: Question) {
        self.question = question.question
        self.options = question.options
        self.image = question.image
    }
    
}
