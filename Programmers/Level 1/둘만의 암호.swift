//
//  둘만의 암호.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/155652
//
//  Created by Jaehun Lee on 2023/06/14.
//

import Foundation

func solution(_ s: String, _ skip: String, _ index: Int) -> String {
    var skipDict: Dictionary<Int, Int> = [:]
    var result = ""
    
    for skipAlphabet in skip {
        skipDict[Int(skipAlphabet.asciiValue!)] = 1
    }
    
    for alphabet in s {
        var asciiOfAlphabet = Int(alphabet.asciiValue!)
        var count = 0
        
        while true {
            asciiOfAlphabet += 1
            
            if asciiOfAlphabet > 122 {
                asciiOfAlphabet -= 26
            }
            
            if skipDict[asciiOfAlphabet] != nil {
                continue
            } else {
                count += 1
            }
            
            if count == index {
                result += String(UnicodeScalar(asciiOfAlphabet)!)
                break
            }
        }
    }
    
    return result
}


print(solution("aukks", "wbqd", 5))
