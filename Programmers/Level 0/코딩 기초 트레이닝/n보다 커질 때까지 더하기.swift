//
//  n보다 커질 때까지 더하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181884
//
//  Created by Jaehun Lee on 2023/06/19.
//

import Foundation

func solution(_ numbers: [Int], _ n: Int) -> Int {
    var sum = 0
    
    for number in numbers {
        sum += number
        
        if sum > n {
            return sum
        }
    }
    
    return -1
}


print(solution([34, 5, 71, 29, 100, 34], 123))
print(solution([58, 44, 27, 10, 100], 139))
