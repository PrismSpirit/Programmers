//
//  홀수 vs 짝수.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181887
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ num_list: [Int]) -> Int {
    var sumOfOddIdx = 0
    var sumOfEvenIdx = 0
    
    for i in 0..<num_list.count {
        if i % 2 == 0 {
            sumOfOddIdx += num_list[i]
        } else {
            sumOfEvenIdx += num_list[i]
        }
    }
    
    return sumOfOddIdx < sumOfEvenIdx ? sumOfEvenIdx : sumOfOddIdx
}


print(solution([4, 2, 6, 1, 7, 6]))
print(solution([-1, 2, 5, 6, 3]))
