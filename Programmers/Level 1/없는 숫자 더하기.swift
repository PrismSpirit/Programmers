//
//  없는 숫자 더하기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/86051
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ numbers: [Int]) -> Int {
    var sum = 0
    
    for n in numbers {
        sum += n
    }
    
    return 45 - sum
}


print(solution([1,2,3,4,6,7,8,0]))
print(solution([5,8,4,0,6,7,9]))
