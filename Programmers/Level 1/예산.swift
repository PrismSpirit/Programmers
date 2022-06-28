//
//  예산.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12982
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ d: [Int], _ budget: Int) -> Int {
    var result = 0
    var apply = d
    var remainBudget = budget
    
    apply.sort()
    
    for a in apply {
        if remainBudget < a {
            break
        }
        remainBudget -= a
        result += 1
    }
    
    return result
}


print(solution([1,3,2,5,4], 9))
print(solution([2,2,3,3], 10))
