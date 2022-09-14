//
//  QuestionViewModel.swift
//  SanCheck
//
//  Created by Moon Yeji on 2022/09/14.
//

import UIKit

struct QuestionViewModel {
    
    let question: String
    let options: [Option]
    let image: UIImage?
    var selectedIndex: Int? {
        willSet(index) {
            if index == 0 {
                selectedOption = options[0]
            } else {
                selectedOption = options[1]
            }
        }
    }
    
    var selectedOption: Option?
    
//    var isSelected: Bool {
//        if let _ = selectedOption {
//            return true
//        } else {
//            return false
//        }
//    }
    
    init(question: Question) {
        self.question = question.question
        self.options = question.options
        self.image = question.image
    }
    
}
