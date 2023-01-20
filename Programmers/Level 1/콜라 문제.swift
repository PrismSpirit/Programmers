//
//  콜라 문제.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/132267
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func solution(_ a: Int, _ b: Int, _ n: Int) -> Int {
    var sumOfReceivedCola = 0
    var n = n
    
    while n >= a {
        let receivedCola = n / a * b
        sumOfReceivedCola += receivedCola
        n = n - (n / a) * a + receivedCola
    }
    
    return sumOfReceivedCola
}


print(solution(2, 1, 20))
print(solution(3, 1, 20))
