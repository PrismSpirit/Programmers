//
//  꼬리 문자열.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181841
//
//  Created by Jaehun Lee on 2023/06/18.
//

import Foundation

func solution(_ str_list: [String], _ ex: String) -> String {
    var result = ""
    
    for str in str_list {
        var flag = false
        
        if str.count < ex.count {
            result += str
            continue
        }
        
        for i in 0..<str.count + 1 - ex.count {
            let subStr = String(str[str.index(str.startIndex, offsetBy: i)..<str.index(str.startIndex, offsetBy: i + ex.count)])
            
            if subStr == ex {
                flag = true
                break
            }
        }
        
        if !flag {
            result += str
        }
    }
    
    return result
}


print(solution(["abc", "def", "ghi"], "ef"))
print(solution(["abc", "bbc", "cbc"], "c"))
