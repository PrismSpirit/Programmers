//
//  시저 암호.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12926
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ s: String, _ n: Int) -> String {
    var afterCaesar: [String] = []
    
    for c in s {
        var asciiOfC = c.asciiValue!
        if (asciiOfC >= 65 && asciiOfC <= 90) {
            asciiOfC += UInt8(n)
            if (asciiOfC > 90) {
                asciiOfC -= 26
            }
        } else if (asciiOfC >= 97 && asciiOfC <= 122) {
            asciiOfC += UInt8(n)
            if (asciiOfC > 122) {
                asciiOfC -= 26
            }
        }
        
        afterCaesar.append(String(UnicodeScalar(asciiOfC)))
    }
    return afterCaesar.joined()
}


print(solution("AB", 1))
print(solution("z", 1))
print(solution("a B z", 4))
