//
//  문자열의 뒤의 n글자.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181910
//
//  Created by Jaehun Lee on 2023/06/18.
//

import Foundation

func solution(_ my_string: String, _ n: Int) -> String {
    let lenOfMyString = my_string.count
    
    return String(my_string[my_string.index(my_string.startIndex, offsetBy: lenOfMyString - n)..<my_string.index(my_string.startIndex, offsetBy: lenOfMyString)])
}


print(solution("ProgrammerS123", 11))
print(solution("He110W0r1d", 5))
