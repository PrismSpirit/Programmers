//
//  삼각형의 완성조건 (1).swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120889
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ sides: [Int]) -> Int {
    let sortedSides = sides.sorted()
    
    return sortedSides[2] < sortedSides[0] + sortedSides[1] ? 1 : 2
}


print(solution([1, 2, 3]))
print(solution([3, 6, 2]))
print(solution([199, 72, 222]))
