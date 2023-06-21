//
//  l로 만들기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181834
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ myString: String) -> String {
    var result = ""
    
    for c in myString {
        if String(c) < "l" {
            result += "l"
        } else {
            result += String(c)
        }
    }
    
    return result
}


print(solution("abcdevwxyz"))
print(solution("jjnnllkkmm"))
