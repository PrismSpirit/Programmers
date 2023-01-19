//
//  직각삼각형 출력하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120823
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

let n = Int(readLine()!)!

for i in 1...n {
    for _ in 0..<i {
        print("*", terminator: "")
    }
    print("")
}
