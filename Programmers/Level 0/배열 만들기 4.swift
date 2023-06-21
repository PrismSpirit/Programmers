//
//  배열 만들기 4.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181918
//
//  Created by Jaehun Lee on 2023/06/22.
//

import Foundation

func solution(_ arr: [Int]) -> [Int] {
    var stk: [Int] = []
    var i = 0
    
    while i < arr.count {
        if stk.isEmpty {
            stk.append(arr[i])
            i += 1
        } else {
            if stk.last! < arr[i] {
                stk.append(arr[i])
                i += 1
            } else {
                stk.removeLast()
            }
        }
    }
    
    return stk
}


print(solution([1, 4, 2, 5, 3]))
