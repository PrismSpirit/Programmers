//
//  [1차] 다트 게임.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/17682
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ dartResult: String) -> Int {
    var dartResultList: [[String]] = []
    var pointOfEachTrial = Array(repeating: 0, count: 3)
    var totalPoints = 0
    
    let regex = try? NSRegularExpression(pattern: "[0-9]{1,2}[S|D|T]{1}[*|#]?")
    if let result = regex?.matches(in: dartResult, options: [], range: NSRange(location: 0, length: dartResult.count)) {
        let rexStrings = result.map { e -> String in
            let range = Range(e.range, in: dartResult)!
            return String(dartResult[range])
        }
        for rexString in rexStrings {
            var tmp: [String] = []
            let tmpl = rexString.components(separatedBy: ["S", "D", "T"])
            if (tmpl[0].count == 2) {
                tmp.append(tmpl[0] + tmpl[1])
                tmp.append(rexString[2]!)
                if rexString[3] != nil {
                    tmp.append(rexString[3]!)
                }
            } else {
                tmp.append(tmpl[0])
                tmp.append(rexString[1]!)
                if rexString[2] != nil {
                    tmp.append(rexString[2]!)
                }
            }
            dartResultList.append(tmp)
        }
    }
    
    for i in 0..<3 {
        let lenOfDartResult = dartResultList[i].count

        for j in 0..<lenOfDartResult {
            if (j == 0) {
                pointOfEachTrial[i] += Int(dartResultList[i][j])!
            } else if (j == 1) {
                if dartResultList[i][j] == "D" {
                    pointOfEachTrial[i] = Int(pow(Double(pointOfEachTrial[i]), Double(2)))
                } else if dartResultList[i][j] == "T" {
                    pointOfEachTrial[i] = Int(pow(Double(pointOfEachTrial[i]), Double(3)))
                }
            } else if (j == 2) {
                if dartResultList[i][j] == "*" {
                    if i == 0 {
                        pointOfEachTrial[i] *= 2
                    } else {
                        pointOfEachTrial[i - 1] *= 2
                        pointOfEachTrial[i] *= 2
                    }
                } else if dartResultList[i][j] == "#" {
                    pointOfEachTrial[i] *= -1
                }
            }
        }
    }

    for p in pointOfEachTrial {
        totalPoints += p
    }
    
    return totalPoints
}

extension String {
    subscript(idx: Int) -> String? {
        guard (0..<count).contains(idx) else {
            return nil
        }
        let target = index(startIndex, offsetBy: idx)
        return String(self[target])
    }
}


print(solution("1S2D*3T"))
print(solution("1D2S#10S"))
print(solution("1D2S0T"))
print(solution("1S*2T*3S"))
print(solution("1D#2S*3S"))
print(solution("1T2D3D#"))
print(solution("1D2S3T*"))
