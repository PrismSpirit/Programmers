//
//  N개의 최소공배수.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12953
//
//  Created by Jaehun Lee on 2022/09/15.
//

import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if a % b == 0 {
        return b
    }
    
    return gcd(b, a % b)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

func solution(_ arr: [Int]) -> Int {
    var lcmOfArr = arr[0]
    
    for i in 1..<arr.count {
        lcmOfArr = lcm(lcmOfArr, arr[i])
    }
    
    return lcmOfArr
}


print(solution([2,6,8,14]))
print(solution([1,2,3]))
