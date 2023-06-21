//
//  수열과 구간 쿼리 3.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181924
//
//  Created by Jaehun Lee on 2023/06/22.
//

import Foundation

func solution(_ arr: [Int], _ queries: [[Int]]) -> [Int] {
    var arr = arr
    
    for query in queries {
        let tmp = arr[query[0]]
        arr[query[0]] = arr[query[1]]
        arr[query[1]] = tmp
    }
    
    return arr
}


print(solution([0, 1, 2, 3, 4], [[0, 3],[1, 2],[1, 4]]))
