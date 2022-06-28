//
//  하샤드 수.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12947
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ x: Int) -> Bool {
    var stringOfX = String(x)
    var sum = 0
    
    for c in stringOfX {
        sum += Int(String(c))!
    }
    
    return x % sum == 0 ? true : false
}


print(solution(10))
print(solution(11))
print(solution(12))
print(solution(13))
