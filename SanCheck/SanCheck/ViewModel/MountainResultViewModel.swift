//
//  MountainResultViewModel.swift
//  SanCheck
//
//  Created by 노유빈 on 2022/09/14.
//

import UIKit

struct MountainResultViewModel {
    
    let mountain: String
    let quote: String
    let image: UIImage?
    
    init(mountainResult: MountainResult) {
        self.mountain = mountainResult.mountain
        self.quote = mountainResult.quote
        self.image = mountainResult.image
    }
    
}
