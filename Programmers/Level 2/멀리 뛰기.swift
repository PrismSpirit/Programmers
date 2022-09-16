//
//  멀리 뛰기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12914
//
//  Created by Jaehun Lee on 2022/09/16.
//

import Foundation

func solution(_ n: Int) -> Int {
    var dpArr: [Int] = Array(repeating: 0, count: 2001)
    
    dpArr[1] = 1
    dpArr[2] = 2
    
    if n > 2 {
        for i in 3..<n + 1 {
            dpArr[i] = (dpArr[i - 2] + dpArr[i - 1]) % 1234567
        }
    }
    
    return dpArr[n]
}


print(solution(4))
print(solution(3))
