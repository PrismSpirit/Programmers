//
//  첫 번째로 나오는 음수.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181896
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ num_list: [Int]) -> Int {
    for i in 0..<num_list.count {
        if num_list[i] < 0 {
            return i
        }
    }
    
    return -1
}


print(solution([12, 4, 15, 46, 38, -2, 15]))
print(solution([13, 22, 53, 24, 15, 6]))
