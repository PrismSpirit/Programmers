//
//  a와 b 출력하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181951
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

print("a = \(a)")
print("b = \(b)")
