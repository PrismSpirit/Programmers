//
//  3진법 뒤집기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/68935
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ n: Int) -> Int {
    var num = n
    var ternaryList: [Int] = []
    var result = 0
    
    while (num >= 3) {
        ternaryList.append(num % 3)
        num /= 3
    }
    ternaryList.append(num)
    
    ternaryList.reverse()
    
    for i in 0..<ternaryList.count {
        result += Int(pow(Double(3), Double(i))) * ternaryList[i]
    }
    
    return result
}


print(solution(45))
print(solution(125))
