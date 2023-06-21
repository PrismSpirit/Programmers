//
//  무작위로 K개의 수 뽑기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181858
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func solution(_ arr: [Int], _ k: Int) -> [Int] {
    var arrDict: Dictionary<Int, Int> = [:]
    var result: [Int] = []
    
    for i in 0..<arr.count {
        if arrDict[arr[i]] == nil {
            result.append(arr[i])
            arrDict[arr[i]] = 1
        }
        
        if result.count == k {
            break
        }
    }
    
    for _ in 0..<k - result.count {
        result.append(-1)
    }
    
    return result
}


print(solution([0, 1, 1, 2, 2, 3], 3))
print(solution([0, 1, 1, 1, 1], 4))
