//
//  정수 찾기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181840
//
//  Created by Jaehun Lee on 2023/06/18.
//

import Foundation

func solution(_ num_list: [Int], _ n: Int) -> Int {
    return num_list.filter { $0 == n }.isEmpty ? 0 : 1
}


print(solution([1, 2, 3, 4, 5], 3))
print(solution([15, 98, 23, 2, 15], 20))
