//
//  대소문자 바꿔서 출력하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181949
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

let s1 = readLine()!

var result = ""

for c in s1 {
    if c.isUppercase {
        result += String(c).lowercased()
    } else {
        result += String(c).uppercased()
    }
}

print(result)
