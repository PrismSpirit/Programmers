//
//  영어 끝말잇기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12981
//
//  Created by Jaehun Lee on 2022/09/01.
//

import Foundation

func solution(_ n: Int, _ words: [String]) -> [Int] {
    let numOfWords = words.count
    
    var player = 0
    var turn = 0
    var history: Set<String> = [words[0]]
    
    for i in 1..<numOfWords {
        if history.contains(words[i]) {
            player = i % n + 1
            turn = i / n + 1
            break
        }
        if words[i - 1].last! != words[i].first! {
            player = i % n + 1
            turn = i / n + 1
            break
        }
        
        history.insert(words[i])
    }
    
    return [player, turn]
}


print(solution(3, ["tank", "kick", "know", "wheel", "land", "dream", "mother", "robot", "tank"]))
print(solution(3, ["hello", "observe", "effect", "take", "either", "recognize", "encourage", "ensure", "establish", "hang", "gather", "refer", "reference", "estimate", "executive"]))
print(solution(2, ["hello", "one", "even", "never", "now", "world", "draw"]))
