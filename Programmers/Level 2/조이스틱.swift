//
//  조이스틱.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/42860
//
//  Created by Jaehun Lee on 2022/09/06.
//

import Foundation

func calcVerticalMove(_ c: Character) -> Int {
    return Int(c.asciiValue!) - 65 < 26 - (Int(c.asciiValue!) - 65) ? Int(c.asciiValue!) - 65 : 26 - (Int(c.asciiValue!) - 65)
}

func solution(_ name: String) -> Int {
    let lenOfName = name.count
    
    let initialName = String(Array(repeating: "A", count: lenOfName))
    var idxToChangeArr: [Int] = []
    
    var result: [Int] = []
    
    for i in 0..<lenOfName {
        if name[name.index(name.startIndex, offsetBy: i)] != initialName[initialName.index(initialName.startIndex, offsetBy: i)] {
            idxToChangeArr.append(i)
        }
    }
    
    if idxToChangeArr.isEmpty {
        return 0
    }
    
    func aux(_ idx: Int, _ idxArr: [Int], _ count: Int) {
        if idxArr.isEmpty {
            result.append(count)
            return
        }
        
        let leftNextIdx = idxArr.last!
        let rightNextIdx = idxArr.first!
        let leftMoveDistance = idx - leftNextIdx >= 0 ? idx - leftNextIdx : idx + lenOfName - leftNextIdx
        let rightMoveDistance = rightNextIdx - idx >= 0 ? rightNextIdx - idx : rightNextIdx + lenOfName - idx
        let leftVerticalMoveTimes = calcVerticalMove(Character(String(name[name.index(name.startIndex, offsetBy: leftNextIdx)])))
        let rightVerticalMoveTimes = calcVerticalMove(Character(String(name[name.index(name.startIndex, offsetBy: rightNextIdx)])))
        
        // leftMove
        aux(idxArr.last!, Array(idxArr[..<(idxArr.count - 1)]), count + leftMoveDistance + leftVerticalMoveTimes)
        // rightMove
        aux(idxArr.first!, Array(idxArr[1...]), count + rightMoveDistance + rightVerticalMoveTimes)
    }
    
    aux(0, idxToChangeArr, 0)
    
    return result.min()!
}


print(solution("JEROEN"))
print(solution("JAN"))
