//
//  점프와 순간 이동.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12980
//
//  Created by Jaehun Lee on 2022/09/16.
//

import Foundation

func solution(_ n: Int) -> Int {
    var n = n
    var answer = 0
    
    while n != 0 {
        if n % 2 != 0 {
            n -= 1
            answer += 1
        } else {
            while n % 2 == 0 {
                n /= 2
            }
        }
    }
    
    return answer
}


print(solution(5))
print(solution(6))
print(solution(5000))
