//
//  예상 대진표.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12985
//
//  Created by Jaehun Lee on 2022/09/16.
//

import Foundation

func solution(_ n: Int, _ a: Int, _ b: Int) -> Int {
    var answer = 0
    
    var a = a
    var b = b
    
    while a != 1 && b != 2 {
        if a % 2 != 0 {
            a += 1
        }
        if b % 2 != 0 {
            b += 1
        }
        
        a /= 2
        b /= 2
        
        answer += 1
    }
    
    return answer
}


print(solution(8, 4, 7))
