//
//  순서쌍의 개수.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120836
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func solution(_ n: Int) -> Int {
    var divisorArr: [Int] = []
    
    for i in 1..<Int(sqrt(Double(n))) + 1 {
        if n % i == 0 {
            divisorArr.append(i)
        }
    }
    
    let lastElementOfDivisorArr = divisorArr.last!
    let lenOfDivisorArr = divisorArr.count
    
    return lastElementOfDivisorArr * lastElementOfDivisorArr == n ? (lenOfDivisorArr - 1) * 2 + 1 : lenOfDivisorArr * 2
}


print(solution(20))
print(solution(100))
