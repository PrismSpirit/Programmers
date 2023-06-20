//
//  배열 조각하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181893
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func solution(_ arr: [Int], _ query: [Int]) -> [Int] {
    var arr = arr
    
    for i in 0..<query.count {
        if i % 2 == 0 {
            arr = Array(arr[...query[i]])
        } else {
            arr = Array(arr[query[i]...])
        }
    }
    
    return arr
}


print(solution([0, 1, 2, 3, 4, 5], [4, 1, 2]))
