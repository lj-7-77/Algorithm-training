let n = Int(readLine()!)!
var stack = [Int]()

func solution(_ input: [String]) {
    let command: String = input[0]
    var result: Int = 0
    
    switch command {
    case "push":
        let number: Int = Int(input[1])!
        stack.append(number)
    case "pop":
        result = stack.isEmpty ? -1 : stack.removeLast()
    case "empty":
        result = stack.isEmpty ? 1 : 0
    case "size":
        result = stack.count
    case "top":
        result = stack.isEmpty ? -1 : stack.last!
    default:
        break
    }
    
    if command != "push" {
        print(result)
    }
}

for _ in 0..<n {
    let command: [String] = readLine()!.split(separator: " ").map{ String($0) }
    solution(command)
}