//
//  기사단원의 무기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/136798
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ number: Int, _ limit: Int, _ power: Int) -> Int {
    var result = 0
    
    for knight in 1...number {
        var requiredATK = 0
        
        let isSqrtInt = Int(sqrt(Double(knight))) * Int(sqrt(Double(knight))) == knight ? true : false
        
        for i in 1...Int(sqrt(Double(knight))) {
            if knight % i == 0 {
                requiredATK += 1
            }
        }
        
        if isSqrtInt {
            requiredATK = (requiredATK - 1) * 2 + 1
        } else {
            requiredATK = requiredATK * 2
        }
        
        if requiredATK > limit {
            result += power
        } else {
            result += requiredATK
        }
    }
    
    return result
}


print(solution(5, 3, 2))
print(solution(10, 3, 2))
