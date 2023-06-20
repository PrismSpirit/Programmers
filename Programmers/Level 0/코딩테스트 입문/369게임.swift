//
//  369게임.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120891
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ order: Int) -> Int {
    var result = 0
    
    for c in String(order) {
        let c = String(c)
        
        if c == "3" || c == "6" || c == "9" {
            result += 1
        }
    }
    
    return result
}


print(solution(3))
print(solution(29423))
