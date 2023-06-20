//
//  문자열 반복해서 출력하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181950
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

let inp = readLine()!.components(separatedBy: [" "]).map { $0 }
let (s1, a) = (inp[0], Int(inp[1])!)

var result = ""

for i in 0..<a {
    result += s1
}

print(result)
