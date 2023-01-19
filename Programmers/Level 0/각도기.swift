//
//  각도기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120829
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func solution(_ angle: Int) -> Int {
    if angle < 90 {
        return 1
    } else if angle == 90 {
        return 2
    } else if angle > 90 && angle < 180 {
        return 3
    } else {
        return 4
    }
}


print(solution(70))
print(solution(91))
print(solution(180))
