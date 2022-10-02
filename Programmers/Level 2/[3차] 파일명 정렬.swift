//
//  [3차] 파일명 정렬.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/17686
//
//  Created by Jaehun Lee on 2022/09/30.
//

import Foundation

func solution(_ files: [String]) -> [String] {
    var improvedFiles: [(String, (String, String, String))] = []
    
    for file in files {
        var flagForDetectNumberStart = true
        var flagForDetectNumberEnd = false
        
        var numberStartIdx = 0
        var numberEndIdx = 0
        
        for i in 0..<file.count {
            if flagForDetectNumberStart {
                if file[file.index(file.startIndex, offsetBy: i)].isNumber {
                    numberStartIdx = i
                    flagForDetectNumberStart = false
                    flagForDetectNumberEnd = true
                }
            }
            
            if flagForDetectNumberEnd {
                if !file[file.index(file.startIndex, offsetBy: i)].isNumber {
                    numberEndIdx = i
                    flagForDetectNumberEnd = false
                }
            }
            
            if !flagForDetectNumberStart && !flagForDetectNumberEnd {
                break
            }
        }
        
        let head = String(file[..<file.index(file.startIndex, offsetBy: numberStartIdx)]).lowercased()
        let number: String
        
        if numberEndIdx == 0 {
            number = String(file[file.index(file.startIndex, offsetBy: numberStartIdx)...])
        } else {
            number = String(file[file.index(file.startIndex, offsetBy: numberStartIdx)..<file.index(file.startIndex, offsetBy: numberEndIdx)])
        }
        
        let tail = String(file[file.index(file.startIndex, offsetBy: numberEndIdx)...])
        
        improvedFiles.append((file, (head, number, tail)))
    }
    
    let sortedImprovedFiles = improvedFiles.sorted {
        if $0.1.0 != $1.1.0 {
            return $0.1.0 < $1.1.0
        } else {
            return Int(String($0.1.1))! < Int(String($1.1.1))!
        }
    }
    
    return sortedImprovedFiles.map { String($0.0) }
}


print(solution(["img12.png", "img10.png", "img02.png", "img1.png", "IMG01.GIF", "img2.JPG"]))
print(solution(["F-5 Freedom Fighter", "B-50 Superfortress", "A-10 Thunderbolt II", "F-14 Tomcat", "F-15"]))
