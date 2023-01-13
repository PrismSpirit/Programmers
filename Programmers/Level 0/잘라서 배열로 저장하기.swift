//
//  잘라서 배열로 저장하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120913
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ my_str: String, _ n: Int) -> [String] {
    var resultArr: [String] = []
    
    var lenOfStr = my_str.count
    var numOfStr = lenOfStr / n
    
    for i in 0..<numOfStr {
        resultArr.append(String(my_str[my_str.index(my_str.startIndex, offsetBy: i * n)..<my_str.index(my_str.startIndex, offsetBy: i * n + n)]))
    }
    
    if lenOfStr % n != 0 {
        resultArr.append(String(my_str[my_str.index(my_str.startIndex, offsetBy: numOfStr * n)...]))
    }
    
    return resultArr
}


print(solution("abc1Addfggg4556b", 6))
print(solution("abcdef123", 3))
