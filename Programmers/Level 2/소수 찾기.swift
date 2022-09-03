//
//  소수 찾기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/42839
//
//  Created by Jaehun Lee on 2022/09/02.
//

import Foundation

func isPrime(_ n: Int) -> Bool {
    if n <= 1 {
        return false
    }
    
    for d in 2..<Int(sqrt(Double(n))) + 1 {
        if (n % d == 0) {
            return false
        }
    }
    
    return true
}

func permutation(_ numStr: String, _ r: Int) -> [Int] {
    var result: [Int] = []
    
    func aux(_ str: String, _ history: String) {
        if history.count == r {
            result.append(Int(history)!)
            return
        }
        
        var str = str
        
        for i in 0..<str.count {
            let tmp = String(str.remove(at: str.index(str.startIndex, offsetBy: i)))
            aux(str, history + tmp)
            str.insert(Character(tmp), at: str.index(str.startIndex, offsetBy: i))
        }
    }
    
    aux(numStr, "")
    
    return result
}

func solution(_ numbers: String) -> Int {
    var numSet: Set<Int> = []
    
    for i in 1...numbers.count {
        numSet = numSet.union(Set(permutation(numbers, i).filter { isPrime($0) }))
    }
    
    return numSet.count
}


print(solution("17"))
print(solution("011"))
