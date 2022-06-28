//
//  자릿수 더하기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12931
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ n: Int) -> Int {
    var result = 0
    let stringOfN = String(n)
    
    for c in stringOfN {
        result += Int(String(c))!
    }
    
    return result
}


print(solution(123))
print(solution(987))
