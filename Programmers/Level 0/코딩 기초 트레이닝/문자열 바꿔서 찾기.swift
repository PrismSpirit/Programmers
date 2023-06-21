//
//  문자열 바꿔서 찾기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181864
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ myString: String, _ pat: String) -> Int {
    return myString.map { String($0) == "A" ? "B" : "A" }.joined().contains(pat) ? 1 : 0
}


print(solution("ABBAA", "AABB"))
print(solution("ABAB", "ABAB"))
