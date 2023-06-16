//
//  뒤에 있는 큰 수 찾기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/154539#
//
//  Created by Jaehun Lee on 2023/06/16.
//

import Foundation

func solution(_ numbers: [Int]) -> [Int] {
    let n = numbers.count
    var backStack: [Int] = []
    var resultArr: [Int] = []
    
    for i in (0..<n).reversed() {
        var flag = true
        
        while backStack.count != 0 {
            if backStack.last! <= numbers[i] {
                backStack.removeLast()
            } else {
                resultArr.append(backStack.last!)
                flag = false
                break
            }
        }
        
        if flag {
            resultArr.append(-1)
        }
        
        backStack.append(numbers[i])
    }
    
    return resultArr.reversed()
}


print(solution([2, 3, 3, 5]))
print(solution([9, 1, 5, 3, 6, 2]))
