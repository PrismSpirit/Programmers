//
//  최댓값 만들기 (2).swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120862
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func solution(_ numbers: [Int]) -> Int {
    var maxVal = Int.min
    
    for i in 0..<numbers.count - 1 {
        for j in i + 1..<numbers.count {
            if maxVal < numbers[i] * numbers[j] {
                maxVal = numbers[i] * numbers[j]
            }
        }
    }
    
    return maxVal
}


print(solution([1, 2, -3, 4, -5]))
print(solution([0, -31, 24, 10, 1, 9]))
print(solution([10, 20, 30, 5, 5, 20, 5]))
