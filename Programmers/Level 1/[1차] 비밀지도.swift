//
//  [1차] 비밀지도.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/17681
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ n: Int, _ arr1: [Int], _ arr2: [Int]) -> [String] {
    var decodedMap: [String] = []
    var decodedArr1: [[Int]] = []
    var decodedArr2: [[Int]] = []
    
    for x in arr1 {
        var tmp: [Int] = []
        
        if String(x, radix: 2).count < n {
            for _ in 0..<n - String(x, radix: 2).count {
                tmp.append(0)
            }
        }
        for c in String(x, radix: 2) {
            tmp.append(Int(String(c))!)
        }
        
        decodedArr1.append(tmp)
    }
    
    for x in arr2 {
        var tmp: [Int] = []
        
        if String(x, radix: 2).count < n {
            for _ in 0..<n - String(x, radix: 2).count {
                tmp.append(0)
            }
        }
        for c in String(x, radix: 2) {
            tmp.append(Int(String(c))!)
        }
        
        decodedArr2.append(tmp)
    }
    
    for x in 0..<n {
        var tmp = ""
        for y in 0..<n {
            if (decodedArr1[x][y] | decodedArr2[x][y] != 0) {
                tmp += "#"
            } else {
                tmp += " "
            }
        }
        decodedMap.append(tmp)
    }

    return decodedMap
}


print(solution(5, [9, 20, 28, 18, 11], [30, 1, 21, 17, 28]))
print(solution(6, [46, 33, 33 ,22, 31, 50], [27 ,56, 19, 14, 14, 10]))
