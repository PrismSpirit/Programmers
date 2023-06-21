//
//  수열과 구간 쿼리 4.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181922
//
//  Created by Jaehun Lee on 2023/06/22.
//

import Foundation

func solution(_ arr: [Int], _ queries: [[Int]]) -> [Int] {
    var arr = arr
    
    for query in queries {
        let (s, e, k) = (query[0], query[1], query[2])
        
        for i in s...e {
            if i % k == 0 {
               arr[i] += 1
            }
        }
    }
    
    return arr
}


print(solution([0, 1, 2, 4, 3], [[0, 4, 1],[0, 3, 2],[0, 3, 3]]))
