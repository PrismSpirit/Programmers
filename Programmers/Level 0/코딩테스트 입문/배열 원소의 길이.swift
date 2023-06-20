//
//  배열 원소의 길이.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120854
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func solution(_ strlist: [String]) -> [Int] {
    return strlist.map { $0.count }
}


print(solution(["We", "are", "the", "world!"]))
print(solution(["I", "Love", "Programmers."]))
