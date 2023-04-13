import Foundation

func solution(_ letter:String) -> String {
    let text: [String] = letter.split(separator: " ").map { String($0) }
    var result: String = ""
    
    for i in 0..<text.count {
        let alphabet: String = morse[text[i], default: "err"]
        result.append(alphabet)
    }
    return result
}

let morse: [String: String] = [
    ".-" : "a",
    "-..." : "b",
    "-.-." : "c",
    "-.." : "d",
    "." : "e",
    "..-." : "f",
    "--." : "g",
    "...." : "h",
    ".." : "i",
    ".---" : "j",
    "-.-" : "k",
    ".-.." : "l",
    "--" : "m",
    "-." : "n",
    "---" : "o",
    ".--." : "p",
    "--.-" : "q",
    ".-." : "r",
    "..." : "s",
    "-" : "t",
    "..-" : "u",
    "...-" : "v",
    ".--" : "w",
    "-..-" : "x",
    "-.--" : "y",
    "--.." : "z"
]