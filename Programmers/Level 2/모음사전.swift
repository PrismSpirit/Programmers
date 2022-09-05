//
//  모음사전.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/84512
//
//  Created by Jaehun Lee on 2022/09/05.
//

import Foundation

func tracker(_ word: String) -> Int {
    var result = 0
    var order = 1
    
    func aux(_ history: String) {
        let alphabets = ["A", "E", "I", "O", "U"]
        
        if history.count == 5 {
            return
        }
        
        for alphabet in alphabets {
            let nextword = history + alphabet
            
            if nextword == word {
                result = order
                break
            }
            order += 1
            
            aux(nextword)
        }
    }
    
    aux("")
    
    return result
}

func solution(_ word: String) -> Int {
    var result = 0
    
    result = tracker(word)
    
    return result
}


print(solution("AAAAE"))
print(solution("AAAE"))
print(solution("I"))
print(solution("EIO"))
