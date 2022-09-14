//
//  QuestionType.swift
//  SanCheck
//
//  Created by Moon Yeji on 2022/09/14.
//

import UIKit

enum QuestionType {
    
    case one
    case two
    case three
    case four
    case five
    
    var question: Question {
        switch self {
        case .one:
            return Question(
                question: "처음 온 숲속을 산책할 때",
                options: ["입구에 있는 지도를 보고 어디 갈지 무엇을 볼 지 정한다", "지도를 한번 슥 보고 발길 닿는 대로 간다"],
                image: UIImage(named: "questionImage1"))
        case .two:
            return Question(
               question: "일년에 한번밖에 없는 겨울 휴가! 떠나고 싶은 곳은?",
               options: ["겨울왕국으로 가자! 스노우 액티비티를 할 수 있는 곳", "따뜻한 곳에서 몸 녹일래~ 온천 여행"],
               image: UIImage(named: "questionImage2"))
        case .three:
            return Question(
               question: "산에서 곰을 만났을 때",
               options: ["내가 더 쎄다는 걸 보여주기 위해 두 팔 번쩍들고 위협한다", "무서우니 못본척 갈길간다"],
               image: UIImage(named: "questionImage3"))
        case .four:
            return Question(
               question: "정신없이 등산을 하니 밤이 되어 버렸다",
               options: ["더이상 이동하는 것은 위험하니 밤을 세고 날이 밝을 때 이동한다", "빨리 집에 돌아가는게 최고 쉬지않고 이동한다"],
               image: UIImage(named: "questionImage4"))
        case .five:
            return Question(
               question: "정상에 올라오니 한 등산객이 간식을 나한테 건낸다",
               options: ["나의 간식도 건내드린다", "나 먹을것도 부족하다. 냅다 받아만 먹는다"],
               image: UIImage(named: "questionImage5"))
        }
    }
    
}
