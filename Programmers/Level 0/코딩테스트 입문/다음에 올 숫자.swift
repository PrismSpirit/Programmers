//
//  다음에 올 숫자.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120924
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ common: [Int]) -> Int {
    return common[2] - common[1] == common[1] - common[0] ? common.last! + (common[1] - common[0]) : common.last! * (common[1] / common[0])
}


print(solution([1, 2, 3, 4]))
print(solution([2, 4, 8]))
