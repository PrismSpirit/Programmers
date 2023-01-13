//
//  7의 개수.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120912
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ array: [Int]) -> Int {
    var result = 0
    
    for n in array {
        for c in String(n) {
            if String(c) == "7" {
                result += 1
            }
        }
    }
    
    return result
}


print(solution([7, 77, 17]))
print(solution([10, 29]))

