//
//  문자열 곱하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181940
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ my_string: String, _ k: Int) -> String {
    var result = ""
    
    for _ in 0..<k  {
        result += my_string
    }
    
    return result
}


print(solution("string", 3))
print(solution("love", 10))
