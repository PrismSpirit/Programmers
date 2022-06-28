//
//  멀쩡한 사각형.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/62048
//
//  Created by Jaehun Lee on 2022/06/29.
//

import Foundation

func solution(_ w: Int, _ h: Int) -> Int64{
    var result: Int64 = Int64(w) * Int64(h)
    
    var prev: Double = 0
    for x in 1...w {
        let curr = (Double(h) * Double(x)) / Double(w)
        result -= Int64(ceil(curr - floor(prev)))
        prev = curr
    }

    return result
}


print(solution(8, 12))
