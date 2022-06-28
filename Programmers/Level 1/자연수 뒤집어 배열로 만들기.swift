//
//  자연수 뒤집어 배열로 만들기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12932
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ n: Int64) -> [Int] {
    return String(n).map { Int(String($0))! }.reversed()
}


print(solution(12345))
