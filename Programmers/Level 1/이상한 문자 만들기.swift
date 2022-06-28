//
//  이상한 문자 만들기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12930
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ s: String) -> String {
    var convertedCharList: [String] = []
    var wordIdx = 0
    
    for c in s {
        if c == " " {
            wordIdx = 0
            convertedCharList.append(String(c))
            continue
        } else if wordIdx % 2 == 0 {
            convertedCharList.append(c.uppercased())
        } else {
            convertedCharList.append(c.lowercased())

        }
        wordIdx += 1
    }
    
    return convertedCharList.joined()
}


print(solution("try hello world"))
