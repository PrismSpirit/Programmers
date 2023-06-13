//
//  덧칠하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/161989
//
//  Created by Jaehun Lee on 2023/06/13.
//

import Foundation

func solution(_ n: Int, _ m: Int, _ section: [Int]) -> Int {
    var startPoint = section.first!
    var count = 1
    
    for i in 1..<section.count {
        if section[i] - startPoint >= m {
            startPoint = section[i]
            count += 1
        }
    }
    
    return count
}


print(solution(8, 4, [2, 3, 6]))
print(solution(5, 4, [1, 3]))
print(solution(4, 1, [1, 2, 3, 4]))
