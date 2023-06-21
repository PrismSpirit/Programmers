//
//  순서 바꾸기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181891
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ num_list: [Int], _ n: Int) -> [Int] {
    let a = Array(num_list[..<n])
    let b = Array(num_list[n...])
    
    return b + a
}


print(solution([2, 1, 6], 1))
print(solution([5, 2, 1, 7, 5], 3))
