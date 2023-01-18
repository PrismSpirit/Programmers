//
//  외계어 사전.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120869
//
//  Created by Jaehun Lee on 2023/01/18.
//

import Foundation

func solution(_ spell: [String], _ dic: [String]) -> Int {
    return dic.map({ $0.sorted() }).contains(spell.joined().sorted()) ? 1 : 2
}


print(solution(["p", "o", "s"], ["sod", "eocd", "qixm", "adio", "soo"]))
print(solution(["z", "d", "x"], ["def", "dww", "dzx", "loveaw"]))
print(solution(["s", "o", "m", "d"], ["moos", "dzx", "smm", "sunmmo", "som"]))
