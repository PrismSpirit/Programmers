//
//  n개 간격의 원소들.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181888
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ num_list: [Int], _ n: Int) -> [Int] {
    var result: [Int] = []
    
    for i in stride(from: 0, to: num_list.count, by: n) {
        result.append(num_list[i])
    }
    
    return result
}


print(solution([4, 2, 6, 1, 7, 6], 2))
print(solution([4, 2, 6, 1, 7, 6], 4))
