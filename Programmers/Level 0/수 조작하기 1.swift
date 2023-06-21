//
//  수 조작하기 1.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181926
//
//  Created by Jaehun Lee on 2023/06/22.
//

import Foundation

func solution(_ n: Int, _ control: String) -> Int {
    var n = n
    
    for c in control {
        switch String(c) {
        case "w":
            n += 1
        case "s":
            n -= 1
        case "d":
            n += 10
        case "a":
            n -= 10
        default:
            break
        }
    }
    
    return n
}


print(solution(0, "wsdawsdassw"))
