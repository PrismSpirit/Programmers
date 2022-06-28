//
//  문자열 내 p와 y의 개수.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12916
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ s:String) -> Bool {
    var pCount = 0
    var yCount = 0
    
    let newCharList = s.lowercased().map {
        String($0)
    }
    
    for c in newCharList {
        if c == "p" {
            pCount += 1
        } else if c == "y" {
            yCount += 1
        }
    }
    
    return pCount == yCount ? true : false
}


print(solution("pPoooyY"))
print(solution("Pyy"))
