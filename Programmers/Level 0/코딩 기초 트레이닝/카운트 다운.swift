//
//  카운트 다운.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181899
//
//  Created by Jaehun Lee on 2023/06/18.
//

import Foundation

func solution(_ start: Int, _ end: Int) -> [Int] {
    return (end...start).reversed()
}


print(solution(10, 3))
