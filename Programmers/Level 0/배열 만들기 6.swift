//
//  배열 만들기 6.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181859
//
//  Created by Jaehun Lee on 2023/06/22.
//

import Foundation

func solution(_ arr: [Int]) -> [Int] {
    var stk: [Int] = []
    
    for i in 0..<arr.count {
        if stk.isEmpty {
            stk.append(arr[i])
        } else {
            if stk.last! == arr[i] {
                stk.removeLast()
            } else {
                stk.append(arr[i])
            }
        }
    }
    
    return stk.isEmpty ? [-1] : stk
}


print(solution([0, 1, 1, 1, 0]))
print(solution([0, 1, 0, 1, 0]))
print(solution([0, 1, 1, 0]))
