//
//  문자열 잘라서 정렬하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181866
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ myString: String) -> [String] {
    return myString.split(separator: "x").map { String($0) }.sorted()
}


print(solution("axbxcxdx"))
print(solution("dxccxbbbxaaaa"))
