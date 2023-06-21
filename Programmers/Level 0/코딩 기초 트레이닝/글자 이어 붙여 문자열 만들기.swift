//
//  글자 이어 붙여 문자열 만들기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181915
//
//  Created by Jaehun Lee on 2023/06/18.
//

import Foundation

func solution(_ my_string: String, _ index_list: [Int]) -> String {
    var result = ""
    
    for idx in index_list {
        result += String(my_string[my_string.index(my_string.startIndex, offsetBy: idx)])
    }
    
    return result
}


print(solution("cvsgiorszzzmrpaqpe", [16, 6, 5, 3, 12, 14, 11, 11, 17, 12, 7]))
print(solution("zpiaz", [1, 2, 0, 0, 3]))
