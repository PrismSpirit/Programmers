//
//  마지막 두 원소.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181927
//
//  Created by Jaehun Lee on 2023/06/19.
//

import Foundation

func solution(_ num_list: [Int]) -> [Int] {
    var num_list = num_list
    let n = num_list.count
    
    if num_list[n - 1] > num_list[n - 2] {
        num_list.append(num_list[n - 1] - num_list[n - 2])
    } else {
        num_list.append(num_list[n - 1] * 2)
    }
    
    return num_list
}


print(solution([2, 1, 6]))
print(solution([5, 2, 1, 7, 5]))
