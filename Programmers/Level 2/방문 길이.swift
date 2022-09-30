//
//  방문 길이.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/49994
//
//  Created by Jaehun Lee on 2022/09/29.
//

import Foundation

func solution(_ dirs: String) -> Int {
    var currPosition: (Int, Int) = (0, 0)
    var traceDict: Dictionary<String, Int> = [:]
    
    for dir in dirs {
        switch String(dir) {
        case "L":
            let nextPosition = (currPosition.0 - 1, currPosition.1)
            let traceLabel = "\(nextPosition.0)\(nextPosition.1)\(currPosition.0)\(currPosition.1)"
            
            if currPosition.0 > -5 {
                if traceDict[traceLabel] == nil {
                    traceDict[traceLabel] = 1
                }
                
                currPosition = nextPosition
            }
        case "R":
            let nextPosition = (currPosition.0 + 1, currPosition.1)
            let traceLabel = "\(currPosition.0)\(currPosition.1)\(nextPosition.0)\(nextPosition.1)"
            
            if currPosition.0 < 5 {
                if traceDict[traceLabel] == nil {
                    traceDict[traceLabel] = 1
                }
                
                currPosition = (currPosition.0 + 1, currPosition.1)
            }
        case "U":
            let nextPosition = (currPosition.0, currPosition.1 + 1)
            let traceLabel = "\(currPosition.0)\(currPosition.1)\(nextPosition.0)\(nextPosition.1)"
            
            if currPosition.1 < 5 {
                if traceDict[traceLabel] == nil {
                    traceDict[traceLabel] = 1
                }
                
                currPosition = (currPosition.0, currPosition.1 + 1)
            }
        case "D":
            let nextPosition = (currPosition.0, currPosition.1 - 1)
            let traceLabel = "\(nextPosition.0)\(nextPosition.1)\(currPosition.0)\(currPosition.1)"
            
            if currPosition.1 > -5 {
                if traceDict[traceLabel] == nil {
                    traceDict[traceLabel] = 1
                }
                
                currPosition = (currPosition.0, currPosition.1 - 1)
            }
        default:
            currPosition = (currPosition.0, currPosition.1)
        }
    }
    
    return traceDict.count
}


print(solution("ULURRDLLU"))
print(solution("LULLLLLLU"))
