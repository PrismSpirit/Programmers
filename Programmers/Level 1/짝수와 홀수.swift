//
//  짝수와 홀수.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12937
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ num: Int) -> String {
    return num % 2 != 0 ? "Odd" : "Even"
}


print(solution(3))
print(solution(4))
