//
//  콜라츠 수열 만들기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181919
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ n: Int) -> [Int] {
    var n = n
    var result: [Int] = [n]
    
    while n != 1 {
        if n % 2 == 0 {
            n /= 2
        } else {
            n = 3 * n + 1
        }
        
        result.append(n)
    }
    
    return result
}


print(solution(10))
