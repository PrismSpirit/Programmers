//
//  덧셈식 출력하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181947
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

print("\(a) + \(b) = \(a + b)")
