//
//  기능개발.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/42586
//
//  Created by Jaehun Lee on 2022/06/29.
//

import Foundation

func solution(_ progresses: [Int], _ speeds: [Int]) -> [Int] {
    var newProgresses = progresses
    var newSpeeds = speeds
    var result: [Int] = []
    
    while !newProgresses.isEmpty {
        var count = 0
        for i in 0..<newProgresses.count {
            newProgresses[i] += newSpeeds[i]
        }
        while newProgresses[0] >= 100 {
            newProgresses.remove(at: 0)
            newSpeeds.remove(at: 0)
            count += 1
            if newProgresses.isEmpty {
                break
            }
        }
        if count != 0 {
            result.append(count)
        }
    }
    
    return result
}


print(solution([93, 30, 55], [1, 30, 5]))
print(solution([95, 90, 99, 99, 80, 99], [1, 1, 1, 1, 1, 1]))
