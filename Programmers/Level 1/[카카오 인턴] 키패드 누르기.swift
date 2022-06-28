//
//  [카카오 인턴] 키패드 누르기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/67256
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func distance(prev: Int, next: Int) -> Int{
    var p = prev
    var n = next
    
    if (n == 0) {
        n = 11
    }
    if (p == 0) {
        p = 11
    }
    
    return (abs(n - p) / 3) + (abs(n - p) % 3)
}

func solution(_ numbers: [Int], _ hand: String) -> String {
    var result: String = ""
    var recent_left = 10
    var recent_right = 12
    
    for n in numbers {
        if (n == 1 || n == 4 || n == 7) {
            result.append("L")
            recent_left = n
        } else if (n == 3 || n == 6 || n == 9) {
            result.append("R")
            recent_right = n
        } else {
            if (distance(prev: recent_left, next: n) == distance(prev: recent_right, next: n)) {
                if (hand == "left") {
                    result.append("L")
                    recent_left = n
                } else {
                    result.append("R")
                    recent_right = n
                }
            } else if (distance(prev: recent_left, next: n) < distance(prev: recent_right, next: n)) {
                result.append("L")
                recent_left = n
            } else {
                result.append("R")
                recent_right = n
            }
        }
    }
    
    return result
}


print(solution([1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5], "right"))
print(solution([7, 0, 8, 2, 8, 3, 1, 5, 7, 6, 2], "left"))
print(solution([1, 2, 3, 4, 5, 6, 7, 8, 9, 0], "right"))
