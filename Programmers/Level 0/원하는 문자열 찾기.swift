//
//  원하는 문자열 찾기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181878
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ myString: String, _ pat: String) -> Int {
    let myString = myString.lowercased()
    let pat = pat.lowercased()
    
    return myString.count < pat.count ? 0 : myString.contains(pat) ? 1 : 0
}


print(solution("AbCdEfG", "aBc"))
print(solution("aaAA", "aaaaa"))
