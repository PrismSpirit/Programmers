//
//  조건 문자열.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181934
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func solution(_ ineq: String, _ eq: String, _ n: Int, _ m: Int) -> Int {
    if ineq == ">" && eq == "=" {
        return n >= m ? 1 : 0
    } else if ineq == "<" && eq == "=" {
        return n <= m ? 1 : 0
    } else if ineq == ">" && eq == "!" {
        return n > m ? 1 : 0
    } else if ineq == "<" && eq == "!" {
        return n < m ? 1 : 0
    }
    
    return -1
}


print(solution("<", "=", 20, 50))
print(solution(">", "!", 41, 78))
