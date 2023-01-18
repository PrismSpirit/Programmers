//
//  안전지대.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120866
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func rangeCalc(_ x: Int, _ n: Int) -> [Int] {
    if x - 1 < 0 && x + 1 >= n {
        return Array(0..<n)
    } else if x - 1 < 0 {
        return Array(0...x + 1)
    } else if x + 1 >= n {
        return Array(x - 1..<n)
    } else {
        return Array(x - 1...x + 1)
    }
}

func rangeCalc(_ x: Int, _ y: Int, _ n: Int) -> [[Int]] {
    var result: [[Int]] = []
    
    result.append(rangeCalc(x, n))
    result.append(rangeCalc(y, n))
    
    return result
}

func solution(_ board: [[Int]]) -> Int {
    let n = board.count
    
    var dangerousZone: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
    
    for i in 0..<n {
        for j in 0..<n {
            if board[i][j] == 1 {
                let rangeArr = rangeCalc(i, j, n)
                let xRange = rangeArr[0]
                let yRange = rangeArr[1]
                
                for x in xRange {
                    for y in yRange {
                        dangerousZone[x][y] = 1
                    }
                }
            }
        }
    }

    return dangerousZone.map { $0.filter { $0 == 0 }.count }.reduce(0, +)
}


print(solution([[0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 1, 0, 0], [0, 0, 0, 0, 0]]))
print(solution([[0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 1, 1, 0], [0, 0, 0, 0, 0]]))
print(solution([[1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1]]))
