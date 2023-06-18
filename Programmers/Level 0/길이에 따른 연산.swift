//
//  길이에 따른 연산.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181879
//
//  Created by Jaehun Lee on 2023/06/19.
//

import Foundation

func solution(_ num_list: [Int]) -> Int {
    if num_list.count >= 11 {
        return num_list.reduce(0, +)
    } else {
        return num_list.reduce(1, *)
    }
}


print(solution([3, 4, 5, 2, 5, 4, 6, 7, 3, 7, 2, 2, 1]))
print(solution([2, 3, 4, 5]))
