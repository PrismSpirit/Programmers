//
//  원소들의 곱과 합.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181929
//
//  Created by Jaehun Lee on 2023/06/19.
//

import Foundation

func solution(_ num_list: [Int]) -> Int {
    let sum = num_list.reduce(0, +)
    let product = num_list.reduce(1, *)
    
    return product < sum * sum ? 1 : 0
}


print(solution([3, 4, 5, 2, 1]))
print(solution([5, 7, 8, 3]))
