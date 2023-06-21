//
//  공배수.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181936
//
//  Created by Jaehun Lee on 2023/06/18.
//

import Foundation

func solution(_ number: Int, _ n: Int, _ m: Int) -> Int {
    return number % n != 0 ? 0 : number % m != 0 ? 0 : 1
}


print(solution(60, 2, 3))
print(solution(55, 10, 5))
