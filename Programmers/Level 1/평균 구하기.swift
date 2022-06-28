//
//  평균 구하기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12944
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ arr: [Int]) -> Double {
    var sum = 0
    
    for x in arr {
        sum += x
    }
    
    return Double(sum) / Double(arr.count)
}


print(solution([1,2,3,4]))
print(solution([5,5]))
