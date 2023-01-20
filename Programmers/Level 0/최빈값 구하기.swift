//
//  최빈값 구하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120812
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func solution(_ array: [Int]) -> Int {
    var numDict: Dictionary<Int, Int> = [:]
    
    for element in array {
        if numDict[element] != nil {
            numDict[element]! += 1
        } else {
            numDict[element] = 1
        }
    }
    
    let sortedNumDict = numDict.sorted { $0.value > $1.value }
    
    if sortedNumDict.count > 1 {
        if sortedNumDict[0].value == sortedNumDict[1].value {
            return -1
        } else {
            return sortedNumDict[0].key
        }
    } else {
        return sortedNumDict[0].key
    }
}


print(solution([1, 2, 3, 3, 3, 4]))
print(solution([1, 1, 2, 2]))
print(solution([1]))
