//
//  공원 산책.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/172928
//
//  Created by Jaehun Lee on 2023/06/15.
//

import Foundation

func commandTrimmer(_ command: String) -> (String, Int) {
    let tmp = command.split(separator: " ").map { String($0) }
    
    return (tmp[0], Int(tmp[1])!)
}

func calcPos(_ currPos: [Int], _ command: (String, Int)) -> [Int] {
    let direction = command.0
    let value = command.1
    
    switch direction {
    case "N":
        return [currPos[0] - value, currPos[1]]
    case "S":
        return [currPos[0] + value, currPos[1]]
    case "W":
        return [currPos[0], currPos[1] - value]
    case "E":
        return [currPos[0], currPos[1] + value]
    default:
        return []
    }
}

func isValidPos(_ pos: [Int], _ h: Int, _ w: Int) -> Bool {
    if pos[0] >= 0 && pos[0] < h && pos[1] >= 0 && pos[1] < w {
        return true
    } else {
        return false
    }
}

func solution(_ park: [String], _ routes: [String]) -> [Int] {
    var park = park.map{ $0.map { String($0) } }
    
    let h = park.count
    let w = park.first!.count
    var currPos = [0, 0]
    var obstacleArr: [[Int]] = []
    
    for i in 0..<h {
        for j in 0..<w {
            let c = park[i][j]
            
            if c == "S" {
                currPos = [i, j]
            } else if c == "X" {
                obstacleArr.append([i, j])
            }
        }
    }
    
    for route in routes {
        let commandTuple = commandTrimmer(route)
        let nextPos = calcPos(currPos, commandTuple)
        
        if !isValidPos(nextPos, h, w) {
            continue
        }
        
        var isCollide = false
        
        for i in 1...commandTuple.1 {
            let calculatedPos = calcPos(currPos, (commandTuple.0, i))
            
            if park[calculatedPos[0]][calculatedPos[1]] == "X" {
                isCollide = true
                break
            }
        }
        
        if isCollide {
            continue
        }
        
        park[currPos[0]][currPos[1]] = "O"
        park[nextPos[0]][nextPos[1]] = "X"
        currPos = nextPos
    }
    
    return currPos
}


print(solution(["SOO","OOO","OOO"], ["E 2","S 2","W 1"]))
print(solution(["SOO","OXX","OOO"], ["E 2","S 2","W 1"]))
print(solution(["OSO","OOO","OXO","OOO"], ["E 2","S 3","W 1"]))
