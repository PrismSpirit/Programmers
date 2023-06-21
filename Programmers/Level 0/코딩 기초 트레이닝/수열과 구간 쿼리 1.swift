//
//  수열과 구간 쿼리 1.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181883
//
//  Created by Jaehun Lee on 2023/06/22.
//

import Foundation

func solution(_ arr: [Int], _ queries: [[Int]]) -> [Int] {
    var arr = arr
    
    for query in queries {
        for i in query[0]...query[1] {
            arr[i] += 1
        }
    }
    
    return arr
}


print(solution([0, 1, 2, 3, 4], [[0, 1],[1, 2],[2, 3]]))
