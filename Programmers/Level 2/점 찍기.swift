//
//  점 찍기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/140107
//
//  Created by Jaehun Lee on 2023/06/27.
//

import Foundation

func solution(_ k: Int, _ d: Int) -> Int64 {
    var result: Int64 = 0
        
    for x in 0...d {
        if x % k == 0 {
            result += Int64(Int(sqrt(Double(d) * Double(d) - Double(x) * Double(x))) / k) + 1
        }
    }
    
    return result
}


print(solution(2, 4))
print(solution(1, 5))
