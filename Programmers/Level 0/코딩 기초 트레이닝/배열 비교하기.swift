//
//  배열 비교하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181856
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ arr1: [Int], _ arr2: [Int]) -> Int {
    let lenOfarr1 = arr1.count
    let lenOfarr2 = arr2.count
    
    if lenOfarr1 > lenOfarr2 {
        return 1
    } else if lenOfarr1 < lenOfarr2 {
        return -1
    } else {
        let sumOfarr1 = arr1.reduce(0, +)
        let sumOfarr2 = arr2.reduce(0, +)
        
        if sumOfarr1 > sumOfarr2 {
            return 1
        } else if sumOfarr1 < sumOfarr2 {
            return -1
        } else {
            return 0
        }
    }
}


print(solution([49, 13], [70, 11, 2]))
print(solution([100, 17, 84, 1], [55, 12, 65, 36]))
print(solution([1, 2, 3, 4, 5], [3, 3, 3, 3, 3]))
