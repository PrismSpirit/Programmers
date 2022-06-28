//
//  K번째수.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/42748
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ array: [Int], _ commands: [[Int]]) -> [Int] {
    var result: [Int] = []
    
    for command in commands {
        var subarr = Array(array[command[0] - 1..<command[1]])
        subarr.sort()
        result.append(subarr[command[2] - 1])
    }
    
    return result
}


print(solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]))
