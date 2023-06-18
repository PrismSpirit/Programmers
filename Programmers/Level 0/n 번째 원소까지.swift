//
//  n 번째 원소까지.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181889
//
//  Created by Jaehun Lee on 2023/06/19.
//

import Foundation

func solution(_ num_list: [Int], _ n: Int) -> [Int] {
    return Array(num_list[..<n])
}


print(solution([2, 1, 6], 1))
print(solution([5, 2, 1, 7, 5], 3))
