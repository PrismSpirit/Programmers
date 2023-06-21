//
//  9로 나눈 나머지.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181914
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ number: String) -> Int {
    return number.map { Int(String($0))! }.reduce(0, +) % 9
}


print(solution("123"))
print(solution("78720646226947352489"))
