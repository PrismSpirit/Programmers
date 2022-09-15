//
//  이진 변환 반복하기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/70129
//
//  Created by Jaehun Lee on 2022/09/15.
//

import Foundation

func solution(_ s: String) -> [Int] {
    var times = 0
    var numOfRemovedZero = 0
    var s = s
    
    while s != "1" {
        let lenOfS = s.count
        let numOfOne = s.split(separator: "1", omittingEmptySubsequences: false).count - 1
        let numOfZero = lenOfS - numOfOne
        
        s = String(numOfOne, radix: 2)
        
        times += 1
        numOfRemovedZero += numOfZero
    }
    
    return [times, numOfRemovedZero]
}


print(solution("110010101001"))
print(solution("01110"))
print(solution("1111111"))
