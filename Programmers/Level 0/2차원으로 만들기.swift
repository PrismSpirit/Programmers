//
//  2차원으로 만들기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120842
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func solution(_ num_list: [Int], _ n: Int) -> [[Int]] {
    var result2DArr: [[Int]] = Array(repeating: [], count: num_list.count / n)
    
    for i in 0..<num_list.count {
        result2DArr[i / n].append(num_list[i])
    }
    
    return result2DArr
}


print(solution([1, 2, 3, 4, 5, 6, 7, 8], 2))
print(solution([100, 95, 2, 4, 5, 6, 18, 33, 948], 3))
