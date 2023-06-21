//
//  문자 리스트를 문자열로 변환하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181941
//
//  Created by Jaehun Lee on 2023/06/18.
//

import Foundation

func solution(_ arr: [String]) -> String {
    return arr.reduce("", +)
}


print(solution(["a","b","c"]))
