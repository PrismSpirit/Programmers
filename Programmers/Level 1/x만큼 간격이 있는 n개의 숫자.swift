//
//  x만큼 간격이 있는 n개의 숫자.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12954
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ x: Int, _ n: Int) -> [Int64] {
    var result: [Int64] = []
    
    for i in 1...n {
        result.append(Int64(x) * Int64(i))
    }
    
    return result
}


print(solution(2, 5))
print(solution(4, 3))
print(solution(-4, 2))
