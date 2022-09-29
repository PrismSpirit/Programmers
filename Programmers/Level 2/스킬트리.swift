//
//  스킬트리.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/49993
//
//  Created by Jaehun Lee on 2022/09/29.
//

import Foundation

func solution(_ skill: String, _ skill_trees: [String]) -> Int {
    let skill = skill.map { String($0) }
    var result = 0
    
    for skill_tree in skill_trees {
        var expectedSkillIdx = 0
        var flag = true
        
        for s in skill_tree {
            if skill.contains(String(s)) {
                if skill[expectedSkillIdx] == String(s) {
                    expectedSkillIdx += 1
                } else {
                    flag = false
                    break
                }
            }
        }
        
        if flag {
            result += 1
        }
    }
    
    return result
}


print(solution("CBD", ["BACDE", "CBADF", "AECB", "BDA"]))
