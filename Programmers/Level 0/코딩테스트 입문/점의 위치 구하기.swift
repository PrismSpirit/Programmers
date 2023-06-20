//
//  점의 위치 구하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120841
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func solution(_ dot: [Int]) -> Int {
    if dot[0] > 0 && dot[1] > 0 {
        return 1
    } else if dot[0] < 0 && dot[1] > 0 {
        return 2
    } else if dot[0] < 0 && dot[1] < 0 {
        return 3
    } else {
        return 4
    }
}


print(solution([2, 4]))
print(solution([-7, 9]))
