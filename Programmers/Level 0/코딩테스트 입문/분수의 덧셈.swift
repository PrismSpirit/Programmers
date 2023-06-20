//
//  분수의 덧셈.swift
//  Programmers
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    return a % b == 0 ? b : gcd(b, a % b)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

func solution(_ numer1: Int, _ denom1: Int, _ numer2: Int, _ denom2: Int) -> [Int] {
    var newDenom = lcm(denom1, denom2)
    var newNumer = (newDenom / denom1) * numer1 + (newDenom / denom2) * numer2
    
    let gcdOfNewFraction = gcd(newDenom, newNumer)
    
    if gcdOfNewFraction != 1 {
        newDenom /= gcdOfNewFraction
        newNumer /= gcdOfNewFraction
    }
    
    return [newNumer, newDenom]
}


print(solution(1, 2, 3, 4))
print(solution(9, 2, 1, 3))
