//
//  2의 영역.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181894
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func solution(_ arr: [Int]) -> [Int] {
    var idxArr: [Int] = []
    
    for i in 0..<arr.count {
        if arr[i] == 2 {
            idxArr.append(i)
        }
    }
    
    if idxArr.isEmpty {
        return [-1]
    }
    
    return Array(arr[idxArr.first!...idxArr.last!])
}


print(solution([1, 2, 1, 4, 5, 2, 9]))
print(solution([1, 2, 1]))
print(solution([1, 1, 1]))
print(solution([1, 2, 1, 2, 1, 10, 2, 1]))
