//
//  문자열 정수의 합.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181849
//
//  Created by Jaehun Lee on 2023/06/19.
//

import Foundation

func solution(_ num_str: String) -> Int {
    return num_str.reduce(0, { x, y in
        Int(String(x))! + Int(String(y))!
    })
}


print(solution("123456789"))
print(solution("1000000"))
