//
//  피보나치 수.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12945
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func fibonacci_mod(_ n: Int) -> Int {
    var fibo: [Int] = [0, 1]
    
    for i in 2...n {
        var fibo_n = fibo[i - 2] + fibo[i - 1]
        if fibo_n >= 1234567 {
            fibo_n %= 1234567
        }
        fibo.append(fibo_n)
    }
    
    return fibo.last!
}

func solution(_ n: Int) -> Int {
    return fibonacci_mod(n)
}


print(solution(3))
print(solution(5))
