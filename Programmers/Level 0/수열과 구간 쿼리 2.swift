//
//  수열과 구간 쿼리 2.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181923
//
//  Created by Jaehun Lee on 2023/06/22.
//

import Foundation

func solution(_ arr: [Int], _ queries: [[Int]]) -> [Int] {
    var result: [Int] = []
    
    for query in queries {
        let (s, e, k) = (query[0], query[1], query[2])
        let filteredArr = arr[s...e].filter { $0 > k }
        
        if let target = filteredArr.min() {
            result.append(target)
        } else {
            result.append(-1)
        }
    }
    
    return result
}


print(solution([0, 1, 2, 4, 3], [[0, 4, 2],[0, 3, 2],[0, 2, 2]]))
