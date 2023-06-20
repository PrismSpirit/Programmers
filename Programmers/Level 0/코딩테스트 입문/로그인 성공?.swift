//
//  로그인 성공?.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120883
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ id_pw: [String], _ db: [[String]]) -> String {
    let loginID = id_pw[0]
    let loginPW = id_pw[1]
    
    for userData in db {
        let userID = userData[0]
        let userPW = userData[1]
        
        if loginID == userID {
            if loginPW == userPW {
                return "login"
            } else {
                return "wrong pw"
            }
        }
    }
    
    return "fail"
}


print(solution(["meosseugi", "1234"], [["rardss", "123"], ["yyoom", "1234"], ["meosseugi", "1234"]]))
print(solution(["programmer01", "15789"], [["programmer02", "111111"], ["programmer00", "134"], ["programmer01", "1145"]]))
print(solution(["rabbit04", "98761"], [["jaja11", "98761"], ["krong0313", "29440"], ["rabbit00", "111333"]]))
