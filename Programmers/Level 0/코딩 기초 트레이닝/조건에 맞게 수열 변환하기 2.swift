//
//  조건에 맞게 수열 변환하기 2.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181881
//
//  Created by Jaehun Lee on 2023/06/22.
//

import Foundation

func convert(_ arr: [Int], _ count: Int) -> Int {
    var newArr: [Int] = []
    
    for i in 0..<arr.count {
        if arr[i] >= 50 && arr[i] % 2 == 0 {
            newArr.append(arr[i] / 2)
        } else if arr[i] < 50 && arr[i] % 2 != 0 {
            newArr.append(arr[i] * 2 + 1)
        } else {
            newArr.append(arr[i])
        }
    }
    
    if newArr == arr {
        return count
    }
    
    return convert(newArr, count + 1)
}

func solution(_ arr: [Int]) -> Int {
    return convert(arr, 0)
}


print(solution([1, 2, 3, 100, 99, 98]))
