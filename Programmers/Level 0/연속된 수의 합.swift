//
//  연속된 수의 합.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120923
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ num: Int, _ total: Int) -> [Int] {
    var resultArr: [Int] = []
    
    var startNumber = 0
    
    if num % 2 != 0 {
        startNumber = total / num - (num - 1) / 2
    } else {
        startNumber = (total / (num / 2) + 1) / 2 - (num / 2)
    }
    
    for x in startNumber..<startNumber + num {
        resultArr.append(x)
    }
    
    return resultArr
}


print(solution(3, 12))
print(solution(5, 15))
print(solution(4, 14))
print(solution(5, 5))
