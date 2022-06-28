//
//  문자열 내림차순으로 배치하기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12917
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ s: String) -> String {
    let sortedString = String(s.sorted(by: >))
    
    return sortedString
}


print(solution("Zbcdefg"))
