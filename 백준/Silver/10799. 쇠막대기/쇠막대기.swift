let input = readLine()!.compactMap{ String($0) }
var stick: Int = 0
var laser: Bool = false
var result: Int = 0

func solution() {
    var index: Int = 0
    
    while index < input.count {
        if input[index] == "(", input[index+1] == ")" {
            result += stick
            index = index + 2
            continue
        } else if input[index] == "(" {
            stick += 1
        } else if input[index] == ")" {
            stick -= 1
            result += 1
        }
        index += 1
    }
    
    print(result)
}

solution()