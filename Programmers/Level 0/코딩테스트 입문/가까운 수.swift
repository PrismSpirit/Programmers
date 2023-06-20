//
//  가까운 수.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120890
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ array: [Int], _ n: Int) -> Int {
    var minDiff = Int.max
    
    let sortedArray = array.sorted()
    
    for i in 0..<sortedArray.count {
        if abs(n - sortedArray[i]) < minDiff {
            minDiff = abs(n - sortedArray[i])
        } else {
            return sortedArray[i - 1]
        }
    }
    
    return sortedArray.last!
}


print(solution([3, 10, 28], 20))
print(solution([10, 11, 12], 13))
