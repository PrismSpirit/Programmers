//
//  코드 처리하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181932
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func solution(_ code: String) -> String {
    let codeArr: [String] = code.map { String($0) }
    var mode = false
    var ret = ""
    
    for i in 0..<code.count {
        let c = codeArr[i]
        
        if c == "1" {
            mode.toggle()
        } else if mode == false && i % 2 == 0 {
            ret += c
        } else if mode == true && i % 2 != 0 {
            ret += c
        }
    }
    
    return ret.isEmpty ? "EMPTY" : ret
}


print(solution("abc1abc1abc"))
