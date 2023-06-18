//
//  조건에 맞게 수열 변환하기 1.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181882
//
//  Created by Jaehun Lee on 2023/06/18.
//

import Foundation

func solution(_ arr: [Int]) -> [Int] {
    var arr = arr
    
    for i in 0..<arr.count {
        if arr[i] >= 50 && arr[i] % 2 == 0 {
            arr[i] /= 2
        } else if arr[i] < 50 && arr[i] % 2 != 0 {
            arr[i] *= 2
        }
    }
    
    return arr
}


print(solution([1, 2, 3, 100, 99, 98]))
