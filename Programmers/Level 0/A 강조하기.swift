//
//  A 강조하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181874
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ myString: String) -> String {
    return myString.lowercased().map { String($0) == "a" ? String($0).uppercased() : String($0) }.joined()
}


print(solution("abstract algebra"))
print(solution("PrOgRaMmErS"))
