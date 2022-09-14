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
        switch reducedOptionValue {
        case "ac":
            return MountainResult(mountain: "히말라야 산", quote: "박정민과 함께,,,", image: UIImage(named: "questionImage2"))
        default:
            return MountainResult(mountain: "히말라야 산", quote: "박정민과 함께,,,", image: UIImage(named: "questionImage2"))
        }
    }
    
    
}
