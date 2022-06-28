//
//  다음 큰 숫자.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12911
//
//  Created by Jaehun Lee on 2022/06/29.
//

import Foundation

func solution(_ n: Int) -> Int {
    var n = n
    var currNumOf1 = 0
    
    for c in String(n, radix: 2) {
        if c == "1" {
            currNumOf1 += 1
        }
    }
    
    while true {
        n += 1
        var nextNumOf1 = 0
        
        for c in String(n, radix: 2) {
            if c == "1" {
                nextNumOf1 += 1
            }
        }
        
        if nextNumOf1 == currNumOf1 {
            return n
        }
    }
}


print(solution(78))
print(solution(15))
