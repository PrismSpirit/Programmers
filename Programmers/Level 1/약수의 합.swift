//
//  약수의 합.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12928
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ n: Int) -> Int {
    var sum = 0
    
    if n == 0 {
        return 0
    }
    
    for i in 1...n {
        if n % i == 0 {
            sum += i
        }
    }
    
    return sum
}


print(solution(12))
print(solution(5))
