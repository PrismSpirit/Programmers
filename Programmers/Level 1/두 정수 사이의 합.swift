//
//  두 정수 사이의 합.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12912
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ a: Int, _ b: Int) -> Int64 {
    var x = a
    var y = b
    
    if x > y {
        swap(&x, &y)
    }
    
    var result = 0
    
    for n in x...y {
        result += n
    }
    
    return Int64(result)
}


print(solution(3, 5))
print(solution(3, 3))
print(solution(5, 3))
