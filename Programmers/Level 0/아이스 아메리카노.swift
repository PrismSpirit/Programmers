//
//  아이스 아메리카노.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120819
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func solution(_ money: Int) -> [Int] {
    return [money / 5500, money % 5500]
}


print(solution(5500))
print(solution(15000))
