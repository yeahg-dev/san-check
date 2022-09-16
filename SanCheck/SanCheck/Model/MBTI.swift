//
//  MBTI.swift
//  SanCheck
//
//  Created by Moon Yeji on 2022/09/16.
//

import UIKit

enum MBTI: String {
    
    case ENFP
    case ENFJ
    case ESFP
    case ESFJ
    case ENTP
    case ENTJ
    case ESTP
    case ESTJ
    case INFP
    case INFJ
    case INTP
    case INTJ
    case ISTP
    case ISTJ
    case ISFP
    case ISFJ
    
    var mountainResult: MountainResult {
        switch self {
        case .ENFP, .ENTP:
            return MountainResult(
                mountain: "할렐루야산",
                quote: "자유로운 영혼을 가진 당신! \n나비족과 함께 날아보세요~👐",
                image: UIImage(named: "mountHallelujah"))
        case .ESFP, .ISFP:
            return MountainResult(
                mountain: "에베레스트산",
                quote: "호기심 많고 탐구적인 당신..  \n에베레스트 궁금해서 못 참을 걸?🤨",
                image: UIImage(named: "mountEverest"))
        case .ENTJ, .ESTP:
            return MountainResult(
                mountain: "히말라야",
                quote: "지도력과 통솔력이 뛰어난 당신..  \n높은 곳에서 소금을 맛보세요",
                image: UIImage(named: "mountHimalaya"))
        case .ESTJ, .ISTJ:
            return MountainResult(
                mountain: "관악산",
                quote: "현실적인 감각이 뛰어나며 추진력이 좋은 당신..  \n최소 3일내 관악산 등반을 계획하시오",
                image: UIImage(named: "mountKwanak"))
        case .INFP, .INTJ:
            return MountainResult(
                mountain: "후지산",
                quote: "차분하고 낭만적인 당신..  \n 따뜻한 온천 후 호지라떼 한 잔~",
                image: UIImage(named: "mountFuzi"))
        case .INFJ, .ESFJ:
            return MountainResult(
                mountain: "한라산",
                quote: "인내심이 많고 다른 사람을 배려하는 당신.  \n오늘만은 한라산에서 한라 토닉으로 취해보아요~🤪",
                image: UIImage(named: "mountHanla"))
        case .INTP, .ENFJ:
            return MountainResult(
                mountain: "올림푸스산",
                quote: "조용하고 과묵한 듯 하지만 아닌 당신. \n올림푸스 신들과 수다 타임 고오~?",
                image: UIImage(named: "mountOlympus"))
        case .ISTP, .ISFJ:
            return MountainResult(
                mountain: "그랜드 캐니언",
                quote: "관찰과 탐구를 좋아하는 당신. \n꼭대기에가서 그랜드 🧅을 관찰해보세요",
                image: UIImage(named: "mountGrandkanyon"))
        }
    }
    
}
