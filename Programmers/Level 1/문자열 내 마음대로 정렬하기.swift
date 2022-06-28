//
//  문자열 내 마음대로 정렬하기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12915
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ strings: [String], _ n: Int) -> [String] {
    var result: [String] = []
    var charLists: [[String]] = []
    
    for string in strings {
        charLists.append(string.map { String($0) })
    }
    
    charLists.sort {
        if $0[n] != $1[n] {
            return $0[n] < $1[n]
        } else {
            return $0.joined() < $1.joined()
        }
    }
    
    for charList in charLists {
        result.append(charList.joined())
    }
    
    return result
}


print(solution(["sun", "bed", "car"], 1))
print(solution(["abce", "abcd", "cdx"], 2))
