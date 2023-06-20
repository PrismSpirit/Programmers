//
//  머쓱이보다 키 큰 사람.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120585
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func solution(_ array: [Int], _ height: Int) -> Int {
    return array.filter { $0 > height }.count
}


print(solution([149, 180, 192, 170], 167))
print(solution([180, 120, 140], 190))
