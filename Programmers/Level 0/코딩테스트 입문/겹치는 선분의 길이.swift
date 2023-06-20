//
//  겹치는 선분의 길이.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120876
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ lines: [[Int]]) -> Int {
    var areaDict: Dictionary<Double, Int> = [:]
    
    for line in lines {
        for i in line[0]..<line[1] {
            let x = Double(i) + 0.5
            
            if areaDict[x] != nil {
                areaDict[x]! += 1
            } else {
                areaDict[x] = 1
            }
        }
    }
    
    return areaDict
        .map { $0 }
        .filter { $0.value > 1 }
        .count
}


print(solution([[0, 1], [2, 5], [3, 9]]))
print(solution([[-1, 1], [1, 3], [3, 9]]))
print(solution([[0, 5], [3, 9], [1, 10]]))
