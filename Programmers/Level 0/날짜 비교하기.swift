//
//  날짜 비교하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181838
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ date1: [Int], _ date2: [Int]) -> Int {
    if date1[0] < date2[0] {
        return 1
    } else if date1[0] > date2[0] {
        return 0
    } else if date1[1] < date2[1] {
        return 1
    } else if date1[1] > date2[1] {
        return 0
    } else if date1[2] < date2[2] {
        return 1
    } else {
        return 0
    }
}


print(solution([2021, 12, 28], [2021, 12, 29]))
print(solution([1024, 10, 24], [1024, 10, 24]))
