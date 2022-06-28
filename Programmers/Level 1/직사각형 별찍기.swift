//
//  직사각형 별찍기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12969
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

for _ in 0..<b {
    for _ in 0..<a {
        print("*", terminator: "")
    }
    print("")
}
