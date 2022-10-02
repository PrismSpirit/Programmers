//
//  2개 이하로 다른 비트.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/77885
//
//  Created by Jaehun Lee on 2022/10/02.
//

import Foundation

func solution(_ numbers: [Int64]) -> [Int64] {
    var result: [Int64] = []
    
    for number in numbers {
        if number % 2 == 0 {
            result.append(number + 1)
        } else {
            var numberStr = String(number, radix: 2)
            
            if String(numberStr.first!) == "1" {
                numberStr = "0" + numberStr
            }
            
            var numberStrArr = numberStr.map { String($0) }
            
            let lastStartOfOneSequence = numberStr.count - numberStr.split(separator: "0", omittingEmptySubsequences: true).last!.count
            
            numberStrArr[lastStartOfOneSequence - 1] = "1"
            numberStrArr[lastStartOfOneSequence] = "0"
            
            result.append(Int64(numberStrArr.joined(), radix: 2)!)
        }
    }
    
    
    return result
}


print(solution([2,7]))
