//
//  소수 만들기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12977
//
//  Created by Jaehun Lee on 2022/08/22.
//

import Foundation

func isPrime(_ n: Int) -> Bool {
    for i in 2..<Int(sqrt(Double(n))) + 1 {
        if (n % i == 0) {
            return false
        }
    }
    
    return true
}

func combination(_ n: Int, _ r: Int) -> [[Int]] {
    let numArr = Array(0..<n)
    var result: [[Int]] = []
    
    func aux(_ index: Int, _ history: [Int]) {
        if history.count == r {
            result.append(history)
            return
        }
        
        for i in index..<n {
            aux(i + 1, history + [numArr[i]])
        }
    }
    
    aux(0, [])
    
    return result
}

func solution(_ nums: [Int]) -> Int {
    let lenOfNums = nums.count
    var result = 0
    
    for comb in combination(lenOfNums, 3) {
        var formedNum = 0
        
        for c in comb {
            formedNum += nums[c]
        }
        
        if isPrime(formedNum) {
            result += 1
        }
    }
    
    return result
}


print(solution([1,2,3,4]))
print(solution([1,2,7,6,4]))
