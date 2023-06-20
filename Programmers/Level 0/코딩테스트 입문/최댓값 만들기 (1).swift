//
//  최댓값 만들기 (1).swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120847
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func solution(_ numbers: [Int]) -> Int {
    var sortedNumbers = numbers.sorted()
    
    return sortedNumbers.removeLast() * sortedNumbers.removeLast()
}


print(solution([1, 2, 3, 4, 5]))
print(solution([0, 31, 24, 10, 1, 9]))
