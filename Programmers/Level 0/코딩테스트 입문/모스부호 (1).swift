//
//  모스부호 (1).swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120838
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func solution(_ letter: String) -> String {
    let morse: Dictionary<String, String> = [
        ".-": "a",
        "-...": "b",
        "-.-.": "c",
        "-..": "d",
        ".": "e",
        "..-.": "f",
        "--.": "g",
        "....": "h",
        "..": "i",
        ".---": "j",
        "-.-": "k",
        ".-..": "l",
        "--": "m",
        "-.": "n",
        "---": "o",
        ".--.": "p",
        "--.-": "q",
        ".-.": "r",
        "...": "s",
        "-": "t",
        "..-": "u",
        "...-": "v",
        ".--": "w",
        "-..-": "x",
        "-.--": "y",
        "--..": "z"
    ]
    
    var result = ""
    
    for c in letter.split(separator: " ") {
        result += morse[String(c)]!
    }
    
    return result
}


print(solution(".... . .-.. .-.. ---"))
print(solution(".--. -.-- - .... --- -."))
