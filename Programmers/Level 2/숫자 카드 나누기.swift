//
//  숫자 카드 나누기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/135807
//
//  Created by Jaehun Lee on 2023/06/28.
//

import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    return a % b == 0 ? b : gcd(b, a % b)
}

func solution(_ arrayA: [Int], _ arrayB: [Int]) -> Int {
    var gcdOfA = arrayA.first!
    var gcdOfB = arrayB.first!
    
    for i in 1..<arrayA.count {
        gcdOfA = gcd(gcdOfA, arrayA[i])
        gcdOfB = gcd(gcdOfB, arrayB[i])
    }
    
    if gcdOfA == 1 && gcdOfB == 1{
        return 0
    } else if gcdOfA == 1 {
        return arrayA.filter { $0 % gcdOfB == 0 }.isEmpty ? gcdOfB : 0
    } else if gcdOfB == 1 {
        return arrayB.filter { $0 % gcdOfA == 0 }.isEmpty ? gcdOfA : 0
    } else {
        if gcdOfA > gcdOfB {
            return arrayB.filter { $0 % gcdOfA == 0 }.isEmpty ? gcdOfA : 0
        } else {
            return arrayA.filter { $0 % gcdOfB == 0 }.isEmpty ? gcdOfB : 0
        }
    }
}


print(solution([10, 17], [5, 20]))
print(solution([10, 20], [5, 17]))
print(solution([14, 35, 119], [18, 30, 102]))
