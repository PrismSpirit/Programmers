//
//  제일 작은 수 제거하기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12935
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ arr: [Int]) -> [Int] {
    var intArr = arr
    intArr.remove(at: intArr.firstIndex(of: intArr.min()!)!)
    
    if intArr.isEmpty {
        return [-1]
    }
    
    return intArr
}


print(solution([4,3,2,1]))
print(solution([10]))
