//
//  푸드 파이트 대회.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/134240
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ food: [Int]) -> String {
    var oneWayStr = ""
    
    for i in 1..<food.count {
        if food[i] % 2 != 0 {
            for _ in 0..<(food[i] - 1) / 2 {
                oneWayStr += String(i)
            }
        } else {
            for _ in 0..<food[i] / 2 {
                oneWayStr += String(i)
            }
        }
    }
    
    return oneWayStr + "0" + String(oneWayStr.reversed())
}


print(solution([1, 3, 4, 6]))
print(solution([1, 7, 1, 2]))
