//
//  배열의 원소 삭제하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181844
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ arr: [Int], _ delete_list: [Int]) -> [Int] {
    let deleteSet: Set<Int> = Set(delete_list)
    var result: [Int] = []
    
    for num in arr {
        if !deleteSet.contains(num) {
            result.append(num)
        }
    }
    
    return result
}


print(solution([293, 1000, 395, 678, 94], [94, 777, 104, 1000, 1, 12]))
print(solution([110, 66, 439, 785, 1], [377, 823, 119, 43]))
