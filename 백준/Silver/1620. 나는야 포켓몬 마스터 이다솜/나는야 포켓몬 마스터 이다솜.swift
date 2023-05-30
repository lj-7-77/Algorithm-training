let input = readLine()!.split(separator: " ").compactMap { Int($0)! }
let n = input[0], m = input[1]
var pocketmon: [String : Int] = [:]
var pocketmonName = Array(repeating: "", count: n+1)
var result: String = ""

for i in 0..<n {
    let input = readLine()!
    pocketmon[input] = i+1
    pocketmonName[i+1] = input
}

for _ in 0..<m {
    let quiz = readLine()!
    solution(quiz)
}

result.removeLast()
print(result)

func solution(_ quiz: String)  {
    if Int(quiz) == nil {
        result += "\(pocketmon[quiz]!)\n"
        return
    } else {
        result += "\(pocketmonName[Int(quiz)!])\n"
        return
    }
}