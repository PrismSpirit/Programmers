//
//  n의 배수.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181937
//
//  Created by Jaehun Lee on 2023/06/18.
//

import Foundation

func solution(_ num: Int, _ n: Int) -> Int {
    return num % n == 0 ? 1 : 0
}


print(solution(98, 2))
print(solution(34, 3))
