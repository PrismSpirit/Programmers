//
//  [3차] 방금그곡.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/17683
//
//  Created by Jaehun Lee on 2022/10/03.
//

import Foundation

func solution(_ m: String, _ musicinfos: [String]) -> String {
    var result: [(Int, String)] = []
    
    for musicinfo in musicinfos {
        let musicInfoArr = musicinfo.split(separator: ",")
        let startTimeArr = musicInfoArr[0].split(separator: ":")
        let endTimeArr = musicInfoArr[1].split(separator: ":")
        
        let startTime = Int(startTimeArr[0])! * 60 + Int(startTimeArr[1])!
        let endTime = Int(endTimeArr[0])! * 60 + Int(endTimeArr[1])!
        
        var melody: [String] = []
        var note: [String] = []
        
        for i in 0..<m.count {
            let c = String(m[m.index(m.startIndex, offsetBy: i)])
            
            if c != "#" {
                melody.append(c)
            } else {
                melody[melody.count - 1] += c
            }
        }
        
        for i in 0..<musicInfoArr[3].count {
            let c = String(musicInfoArr[3][musicInfoArr[3].index(musicInfoArr[3].startIndex, offsetBy: i)])
            
            if c != "#" {
                note.append(c)
            } else {
                note[note.count - 1] += c
            }
        }
                
        let musicPlayTime = endTime - startTime
        let title = String(musicInfoArr[2])
        let musicLength = note.count
        
        var totalMelody: [String] = []
        
        if musicPlayTime < musicLength {
            totalMelody = Array(note[..<musicPlayTime])
        } else {
            for _ in 0..<musicPlayTime / musicLength {
                totalMelody += note
            }
            
            for i in 0..<musicPlayTime % musicLength {
                totalMelody.append(note[i])
            }
        }
        
        if melody.count <= totalMelody.count {
            var flag = true
            
            for i in 0..<totalMelody.count - melody.count + 1 {
                flag = true
                
                for j in 0..<melody.count {
                    if totalMelody[i + j] != melody[j] {
                        flag = false
                        break
                    }
                }
                
                if flag {
                    result.append((musicPlayTime, title))
                    break
                }
            }
        }
    }
    
    let sortedResult = result.sorted {
        return $0.0 > $1.0
    }
    
    return sortedResult.isEmpty ? "(None)" : sortedResult[0].1
}


print(solution("ABCDEFG", ["12:00,12:14,HELLO,CDEFGAB", "13:00,13:05,WORLD,ABCDEF"]))
print(solution("CC#BCC#BCC#BCC#B", ["03:00,03:30,FOO,CC#B", "04:00,04:08,BAR,CC#BCC#BCC#B"]))
print(solution("ABC", ["12:00,12:14,HELLO,C#DEFGAB", "13:00,13:05,WORLD,ABCDEF"]))
