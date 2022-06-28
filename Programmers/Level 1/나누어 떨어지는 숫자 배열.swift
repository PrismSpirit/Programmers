//
//  나누어 떨어지는 숫자 배열.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12910
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ arr: [Int], _ divisor: Int) -> [Int] {
    let numArr = arr.sorted()
    var result: [Int] = []
    
    for n in numArr {
        if n % divisor == 0 {
            result.append(n)
        }
    }
    
    if result.isEmpty {
        result.append(-1)
    }

    return result
}


print(solution([5, 9, 7, 10], 5))
print(solution([2, 36, 1, 3], 1))
print(solution([3,2,6], -1))
