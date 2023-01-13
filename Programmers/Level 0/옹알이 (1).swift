//
//  옹알이 (1).swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120956
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ babbling: [String]) -> Int {
    var result = 0
    
    let vocaArr: [String] = ["aya", "ye", "woo", "ma"]
    
    for i in 0..<babbling.count {
        var str = babbling[i]
        
        while true {
            var isMatched = false
            
            for voca in vocaArr {
                if str.count >= voca.count {
                    if String(str[str.index(str.startIndex, offsetBy: 0)..<str.index(str.startIndex, offsetBy: voca.count)]) == voca {
                        str = String(str[str.index(str.startIndex, offsetBy: voca.count)...])
                        isMatched = true
                        break
                    }
                }
            }
            
            if !isMatched {
                break
            }
        }
        
        if str == "" {
            result += 1
        }
    }
    
    return result
}


print(solution(["aya", "yee", "u", "maa", "wyeoo"]))
print(solution(["ayaye", "uuuma", "ye", "yemawoo", "ayaa"]))
