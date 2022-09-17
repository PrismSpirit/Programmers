//
//  n^2 배열 자르기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/87390
//
//  Created by Jaehun Lee on 2022/09/17.
//

import Foundation

func convertCoordToValue(_ coord: (Int, Int)) -> Int {
    return max(coord.0 + 1, coord.1 + 1)
}

func solution(_ n: Int, _ left: Int64, _ right: Int64) -> [Int] {
    var result: [Int] = []
    
    let from: (Int, Int) = (Int(left / Int64(n)), Int(left % Int64(n)))
    let to: (Int, Int) = (Int(right / Int64(n)), Int(right % Int64(n)))
    
    if from.0 == to.0 {
        for y in from.1...to.1 {
            result.append(convertCoordToValue((from.0, y)))
        }
    } else if to.0 - from.0 == 1 {
        for y in from.1..<n {
            result.append(convertCoordToValue((from.0, y)))
        }
        for y in 0...to.1 {
            result.append(convertCoordToValue((to.0, y)))
        }
    } else if to.0 - from.0 > 1 {
        for y in from.1..<n {
            result.append(convertCoordToValue((from.0, y)))
        }
        for x in from.0 + 1..<to.0 {
            for y in 0..<n {
                result.append(convertCoordToValue((x, y)))
            }
        }
        for y in 0...to.1 {
            result.append(convertCoordToValue((to.0, y)))
        }
    }
    
    return result
}


print(solution(3, 2, 5))
print(solution(4, 7, 14))
