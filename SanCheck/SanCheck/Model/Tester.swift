//
//  Tester.swift
//  SanCheck
//
//  Created by 노유빈 on 2022/09/14.
//

import UIKit

class Tester {
    var answerValue: [String] = []
    
    func test(reducedOptionValue: String) -> MountainResult {
        return MBTI(rawValue: reducedOptionValue)!.mountainResult
    }
    
}
