//
//  문자열 붙여서 출력하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181946
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

let inp = readLine()!.components(separatedBy: [" "]).map { $0 }
let (s1, s2) = (inp[0], inp[1])

print("\(s1)\(s2)")
