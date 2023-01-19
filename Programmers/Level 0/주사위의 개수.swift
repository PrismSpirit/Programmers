//
//  주사위의 개수.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120845
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func solution(_ box: [Int], _ n: Int) -> Int {
    return (box[0] / n) * (box[1] / n) * (box[2] / n)
}


print(solution([1, 1, 1], 1))
print(solution([10, 8, 6], 3))
