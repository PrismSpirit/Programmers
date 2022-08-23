//
//  행렬의 곱셈.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12949
//
//  Created by Jaehun Lee on 2022/08/23.
//

import Foundation

func solution(_ arr1: [[Int]], _ arr2: [[Int]]) -> [[Int]] {
    let m = arr1.count
    let n = arr1[0].count
    let p = arr2[0].count
    
    var result: [[Int]] = Array(repeating: Array(repeating: 0, count: p), count: m)
    
    for row in 0..<m {
        for col in 0..<p {
            for k in 0..<n {
                result[row][col] += arr1[row][k] * arr2[k][col]
            }
        }
    }
    
    return result
}


print(solution([[1, 4], [3, 2], [4, 1]], [[3, 3], [3, 3]]))
