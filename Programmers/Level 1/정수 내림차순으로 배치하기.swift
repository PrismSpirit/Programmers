//
//  정수 내림차순으로 배치하기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12933
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ n: Int64) -> Int64 {
    return Int64(String(n).map { String($0) }.sorted(by: >).joined())!
}


print(solution(118372))
