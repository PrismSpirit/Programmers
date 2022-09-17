//
//  [1차] 뉴스 클러스터링.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/17677
//
//  Created by Jaehun Lee on 2022/09/17.
//

import Foundation

func splitStringToTwoCharString(_ s: String) -> Dictionary<String, Int> {
    var twoCharStringDict: Dictionary<String, Int> = [:]
    
    let lenOfS = s.count
    
    for i in 0..<lenOfS - 1 {
        let firstChar = Character(String(s[s.index(s.startIndex, offsetBy: i)]))
        let secondChar = Character(String(s[s.index(s.startIndex, offsetBy: i + 1)]))
        
        if firstChar.isLetter && secondChar.isLetter {
            let twoCharString = String(firstChar).lowercased() + String(secondChar).lowercased()
            
            if twoCharStringDict[twoCharString] != nil {
                twoCharStringDict[twoCharString]! += 1
            } else {
                twoCharStringDict[twoCharString] = 1
            }
        }
    }
    
    return twoCharStringDict
}

func solution(_ str1: String, _ str2: String) -> Int {
    let dictA = splitStringToTwoCharString(str1)
    let dictB = splitStringToTwoCharString(str2)
    
    let keySetOfDictA = Set(dictA.keys)
    let keySetOfDictB = Set(dictB.keys)
    
    let AorB = keySetOfDictA.union(keySetOfDictB)
    let AandB = keySetOfDictA.intersection(keySetOfDictB)
    
    if AorB.isEmpty {
        return 65536
    }
    
    var unionCount = 0
    var intersectionCount = 0
    
    for s in keySetOfDictA.subtracting(AandB) {
        unionCount += dictA[s]!
    }
    
    for s in keySetOfDictB.subtracting(AandB) {
        unionCount += dictB[s]!
    }
    
    for s in AandB {
        unionCount += max(dictA[s]!, dictB[s]!)
        intersectionCount += min(dictA[s]!, dictB[s]!)
    }
    
    return Int(Double(intersectionCount) / Double(unionCount) * 65536)
}


print(solution("FRANCE", "french"))
print(solution("handshake", "shake hands"))
print(solution("aa1+aa2", "AAAA12"))
print(solution("E=M*C^2", " e=m*c^2"))
