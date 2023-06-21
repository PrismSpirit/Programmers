//
//  가까운 1 찾기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181898
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ arr: [Int], _ idx: Int) -> Int {
    for i in idx..<arr.count {
        if arr[i] == 1 {
            return i
        }
    }
    
    return -1
}


print(solution([0, 0, 0, 1], 1))
print(solution([1, 0, 0, 1, 0, 0], 4))
print(solution([1, 1, 1, 1, 0], 3))
