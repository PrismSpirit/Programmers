//
//  [3차] n진수 게임.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/17687
//
//  Created by Jaehun Lee on 2022/09/28.
//

import Foundation

func solution(_ n: Int, _ t: Int, _ m: Int, _ p: Int) -> String {
    var numArr: [String] = []
    var resultArr: [String] = []
    
    var i = 0
    
    while true {
        let numStr = String(i, radix: n).map { String($0) }
        numArr += numStr
        
        i += 1
        
        if numArr.count >= t * m {
            break
        }
    }
    
    for x in 0..<numArr.count {
        if (x - (p - 1)) % m == 0 {
            resultArr.append(numArr[x])
        }
        
        if resultArr.count == t {
            break
        }
    }
    
    return resultArr.joined().uppercased()
}


print(solution(2, 4, 2, 1))
print(solution(16, 16, 2, 1))
print(solution(16, 16, 2, 2))
