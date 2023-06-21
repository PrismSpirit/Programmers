//
//  두 수의 합.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181846
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func solution(_ a: String, _ b: String) -> String {
    var aArr = a.reversed().map { String($0) }
    var bArr = b.reversed().map { String($0) }
    let lenOfA = a.count
    let lenOfB = b.count
    var reversedResult: [String] = []
    
    if lenOfA < lenOfB {
        for _ in 0..<lenOfB - lenOfA {
            aArr.append("0")
        }
    } else if lenOfA > lenOfB {
        for _ in 0..<lenOfA - lenOfB {
            bArr.append("0")
        }
    }
    aArr.append("0")
    bArr.append("0")

    var carry = 0
    for i in 0..<aArr.count {
        let sum = Int(aArr[i])! + Int(bArr[i])! + carry
        
        reversedResult.append(String(sum % 10))
        carry = 0
        
        if sum / 10 == 1 {
            carry = 1
        }
    }
    
    if reversedResult.count > 1 && reversedResult.last! == "0" {
        reversedResult = Array(reversedResult[..<(aArr.count - 1)])
    }
    
    return reversedResult.reversed().joined()
}


print(solution("582", "734"))
print(solution("18446744073709551615", "287346502836570928366"))
print(solution("0", "0"))
