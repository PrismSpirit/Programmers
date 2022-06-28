//
//  수박수박수박수박수박수?.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12922
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ n: Int) -> String {
    var result = ""
    let watermelon = "수박"
    
    if n % 2 != 0 {
        for _ in 0..<(n - 1) / 2 {
            result += watermelon
        }
        result += "수"
    } else {
        for _ in 0..<n / 2 {
            result += watermelon
        }
    }
    
    return result
}


print(solution(3))
print(solution(4))
