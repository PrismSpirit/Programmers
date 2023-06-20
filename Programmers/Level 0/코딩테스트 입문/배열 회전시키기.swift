//
//  배열 회전시키기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120844
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func solution(_ numbers: [Int], _ direction: String) -> [Int] {
    var numbers = numbers
    
    if direction == "left" {
        numbers.append(numbers.removeFirst())
    } else if direction == "right" {
        numbers.insert(numbers.removeLast(), at: 0)
    }
    
    return numbers
}


print(solution([1, 2, 3], "right"))
print(solution([4, 455, 6, 4, -1, 45, 6], "left"))
