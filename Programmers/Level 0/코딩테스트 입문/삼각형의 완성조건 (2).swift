//
//  삼각형의 완성조건 (2).swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120868
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func solution(_ sides: [Int]) -> Int {
    return Array(sides.max()! - sides.min()! + 1..<sides.max()!).count + Array(sides.max()!..<sides.max()! + sides.min()!).count
}


print(solution([1, 2]))
print(solution([3, 6]))
print(solution([11, 7]))
