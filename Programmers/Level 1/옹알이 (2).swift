//
//  옹알이 (2).swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/133499
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func solution(_ babbling: [String]) -> Int {
    var result = 0
    
    let vocaArr = ["aya", "ye", "woo", "ma"]
    
    for babble in babbling {
        var currentIdx = 0
        var prevVoca = ""
        
        while true {
            var isMatched = false
            
            for voca in vocaArr {
                if babble.count - currentIdx >= voca.count && babble[babble.index(babble.startIndex, offsetBy: currentIdx)..<babble.index(babble.startIndex, offsetBy: currentIdx + voca.count)] == voca && voca != prevVoca {
                    currentIdx += voca.count
                    prevVoca = voca
                    isMatched = true
                    break
                }
            }
            
            if !isMatched {
                break
            }
        }
        
        if currentIdx == babble.count {
            result += 1
        }
    }
    
    return result
}


print(solution(["aya", "yee", "u", "maa"]))
print(solution(["ayaye", "uuu", "yeye", "yemawoo", "ayaayaa"]))
