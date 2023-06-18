//
//  flag에 따라 다른 값 반환하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181933
//
//  Created by Jaehun Lee on 2023/06/18.
//

import Foundation

func solution(_ a: Int, _ b: Int, _ flag: Bool) -> Int {
    return flag ? a + b : a - b
}


print(solution(-4, 7, true))
print(solution(-4, 7, false))
