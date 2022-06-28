//
//  정수 제곱근 판별.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12934
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ n: Int64) -> Int64 {
    for x in 0..<Int(sqrt(Double(n))) + 1 {
        if Int64(pow(Double(x), Double(2))) == n {
            return Int64(pow(Double(x + 1), Double(2)))
        }
    }
    
    return -1
}


print(solution(121))
print(solution(3))
