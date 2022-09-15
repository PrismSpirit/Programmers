//
//  최솟값 만들기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12941
//
//  Created by Jaehun Lee on 2022/09/15.
//

import Foundation

func solution(_ A: [Int], _ B: [Int]) -> Int {
    let sortedA = A.sorted(by: <)
    let sortedB = B.sorted(by: >)
    let lenOfArr = A.count
    
    var result = 0
    
    for i in 0..<lenOfArr {
        result += sortedA[i] * sortedB[i]
    }
    
    return result
}


print(solution([1, 4, 2], [5, 4, 4]))
print(solution([1, 2], [3, 4]))
