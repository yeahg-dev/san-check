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
                question: "Q. 처음 온 숲속을 산책할 때",
                options: [Option(answer: "입구에 있는 지도를 보고 어디 갈지 무엇을 볼 지 정한다", value: "a"),
                          Option(answer: "지도를 한번 슥 보고 발길 닿는 대로 간다", value: "b")],
                image: UIImage(named: "questionImage1"))
        case .two:
            return Question(
               question: "Q. 일년에 한번밖에 없는 겨울 휴가! 떠나고 싶은 곳은?",
               options: [Option(answer: "겨울왕국으로 가자! 스노우 액티비티를 할 수 있는 곳", value: "c"),
                         Option(answer: "따뜻한 곳에서 몸 녹일래~ 온천 여행", value: "d")],
               image: UIImage(named: "questionImage2"))
        case .three:
            return Question(
               question: "Q. 산에서 곰을 만났을 때",
               options: [Option(answer: "내가 더 쎄다는 걸 보여주기 위해 두 팔 번쩍들고 위협한다", value: "e"),
                         Option(answer: "무서우니 못본척 갈길간다", value: "f")],
               image: UIImage(named: "questionImage3"))
        case .four:
            return Question(
               question: "Q. 정신없이 등산을 하니 밤이 되어 버렸다",
               options: [Option(answer: "더이상 이동하는 것은 위험하니 밤을 세고 날이 밝을 때 이동한다", value: "g"),
                         Option(answer: "빨리 집에 돌아가는게 최고 쉬지않고 이동한다", value: "h")],
               image: UIImage(named: "questionImage4"))
        case .five:
            return Question(
               question: "Q. 정상에 올라오니 한 등산객이 간식을 나한테 건낸다",
               options: [Option(answer: "나의 간식도 건내드린다", value: "i"),
                         Option(answer: "나 먹을것도 부족하다. 냅다 받아만 먹는다", value: "j")],
               image: UIImage(named: "questionImage5"))
        }
    }
    
}
