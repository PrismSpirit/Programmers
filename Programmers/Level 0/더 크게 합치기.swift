//
//  더 크게 합치기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181939
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ a: Int, _ b: Int) -> Int {
    let aob = Int(String(a) + String(b))!
    let boa = Int(String(b) + String(a))!
    
    return aob >= boa ? aob : boa
}


print(solution(9, 91))
print(solution(89, 8))
