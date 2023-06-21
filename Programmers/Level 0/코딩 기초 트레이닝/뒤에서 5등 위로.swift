//
//  뒤에서 5등 위로.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181852
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ num_list: [Int]) -> [Int] {
    return Array(num_list.sorted()[5...])
}


print(solution([12, 4, 15, 46, 38, 1, 14, 56, 32, 10]))
