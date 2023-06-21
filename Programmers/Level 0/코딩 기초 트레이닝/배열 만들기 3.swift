//
//  배열 만들기 3.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181895
//
//  Created by Jaehun Lee on 2023/06/22.
//

import Foundation

func solution(_ arr: [Int], _ intervals: [[Int]]) -> [Int] {
    var result: [Int] = []
    
    for interval in intervals {
        result += arr[interval[0]..<interval[1] + 1]
    }
    
    return result
}


print(solution([1, 2, 3, 4, 5], [[1, 3], [0, 4]]))
print(solution([1, 2], [[0, 0], [1, 1]]))
