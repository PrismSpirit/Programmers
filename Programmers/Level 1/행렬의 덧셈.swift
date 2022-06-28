//
//  행렬의 덧셈.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12950
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ arr1: [[Int]], _ arr2: [[Int]]) -> [[Int]] {
    var sumOfMatrix: [[Int]] = []
    let row = arr1.count
    let col = arr1[0].count
    
    for x in 0..<row {
        var tmp: [Int] = []
        for y in 0..<col {
            tmp.append(arr1[x][y] + arr2[x][y])
        }
        sumOfMatrix.append(tmp)
    }
    
    return sumOfMatrix
}


print(solution([[1,2],[2,3]], [[3,4],[5,6]]))
print(solution([[1],[2]], [[3],[4]]))
