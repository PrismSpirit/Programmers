//
//  두 수의 연산값 비교하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181938
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ a: Int, _ b: Int) -> Int {
    let aob = Int(String(a) + String(b))!
    let ab2 = a * b * 2
    
    return aob < ab2 ? ab2: aob
}


print(solution(2, 91))
print(solution(91, 2))
