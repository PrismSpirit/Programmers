//
//  치킨 쿠폰.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120884
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ chicken: Int) -> Int {
    var result = 0
    var chicken = chicken
    
    while chicken / 10 > 0 {
        let coupon = chicken / 10
        
        result += coupon
        chicken -= coupon * 10
        chicken += coupon
    }
    
    return result
}


print(solution(100))
print(solution(1081))
