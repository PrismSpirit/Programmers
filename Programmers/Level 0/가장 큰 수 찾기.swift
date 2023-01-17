//
//  가장 큰 수 찾기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120899
//
//  Created by Jaehun Lee on 2023/01/18.
//

import Foundation

func solution(_ array: [Int]) -> [Int] {
    var maxVal = array.first!
    var idxOfMaxVal = 0
    
    for i in 1..<array.count {
        if maxVal < array[i] {
            maxVal = array[i]
            idxOfMaxVal = i
        }
    }
    
    return [maxVal, idxOfMaxVal]
}


print(solution([1, 8, 3]))
print(solution([9, 10, 11, 8]))
