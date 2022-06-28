//
//  콜라츠 추측.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12943
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ num: Int) -> Int {
    var count = 0
    var n = num
    
    for _ in 0..<500 {
        if n == 1 {
            return count
        }
        
        if n % 2 == 0 {
            n /= 2
        } else {
            n = n * 3 + 1
        }
        count += 1
    }
    
    return -1
}


print(solution(6))
print(solution(16))
print(solution(626331))
