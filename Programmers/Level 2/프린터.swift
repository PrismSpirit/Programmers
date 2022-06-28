//
//  프린터.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/42587
//
//  Created by Jaehun Lee on 2022/06/29.
//

import Foundation

func solution(_ priorities: [Int], _ location: Int) -> Int {
    var newPriorities = priorities
    var newLocation = location
    var result = 1
    var flag = false
    
    while true {
        for i in 1..<newPriorities.count {
            if newPriorities[0] < newPriorities[i] {
                newPriorities.append(newPriorities.removeFirst())
                if newLocation == 0 {
                    newLocation = newPriorities.count - 1
                } else {
                    newLocation -= 1
                }
                flag = true
                break
            }
        }
        if flag {
            flag = false
            continue
        }
        if newLocation == 0 {
            return result
        } else {
            newPriorities.removeFirst()
            newLocation -= 1
            result += 1
        }
    }
}


print(solution([2, 1, 3, 2], 2))
print(solution([1, 1, 9, 1, 1, 1], 0))
