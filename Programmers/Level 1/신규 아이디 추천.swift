//
//  신규 아이디 추천.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/72410
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ new_id: String) -> String {
    var notAllowedChars = CharacterSet()
    notAllowedChars.insert(charactersIn: "~!@#$%^&*()=+[{]}:?,<>/")
    
    let first = new_id.lowercased()
    let second = first.components(separatedBy: notAllowedChars).joined()
    
    var tmp = second.map { String($0) }
    var continuityChecker = false
    for i in 0..<second.count {
        if (tmp[i] == "." && !continuityChecker) {
            continuityChecker = true
            continue
        }
        else if (tmp[i] == "." && continuityChecker) {
            tmp[i] = ""
            continue
        }
        else {
            continuityChecker = false
        }
    }
    
    let third = tmp.joined()
    let fourth = third.trimmingCharacters(in: ["."])
    
    var fifth = fourth
    
    if fifth.isEmpty {
        fifth.append("a")
    }
    
    var sixth = fifth
    
    if sixth.count > 15 {
        sixth = String(fifth[..<fifth.index(fifth.startIndex, offsetBy: 15)])
    }
    
    if (sixth.last! == ".") {
        sixth = String(sixth.dropLast(1))
    }
    
    var seventh = String(sixth)
    
    if (seventh.count <= 2) {
        let e = seventh.last!
        while (seventh.count < 3) {
            seventh.append(e)
        }
    }
    
    return seventh
}


print(solution("...!@BaT#*..y.abcdefghijklm"))
print(solution("z-+.^."))
print(solution("=.="))
print(solution("123_.def"))
print(solution("abcdefghijklmn.p"))
