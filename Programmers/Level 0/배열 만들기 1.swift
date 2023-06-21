//
//  배열 만들기 1.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181901
//
//  Created by Jaehun Lee on 2023/06/22.
//

import Foundation

func solution(_ n: Int, _ k: Int) -> [Int] {
    return (1...n).filter { $0 % k == 0 }
}


print(solution(10, 3))
print(solution(15, 5))
