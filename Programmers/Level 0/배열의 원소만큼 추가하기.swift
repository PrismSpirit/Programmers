//
//  배열의 원소만큼 추가하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181861
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ arr: [Int]) -> [Int] {
    var X: [Int] = []
    
    for num in arr {
        for _ in 0..<num {
            X.append(num)
        }
    }
    
    return X
}


print(solution([5, 1, 4]))
print(solution([6, 6]))
print(solution([1]))
