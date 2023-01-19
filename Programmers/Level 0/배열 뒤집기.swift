//
//  배열 뒤집기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120821
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func solution(_ num_list: [Int]) -> [Int] {
    return num_list.reversed()
}


print(solution([1, 2, 3, 4, 5]))
print(solution([1, 1, 1, 1, 1, 2]))
print(solution([1, 0, 1, 1, 1, 3, 5]))
