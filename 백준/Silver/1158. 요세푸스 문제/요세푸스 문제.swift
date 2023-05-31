let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n: Int = input[0], target: Int = input[1]
var circle: [Int] = Array(1...n)
var result = [Int]()
var answer: String = "<"

func solution() {
    var index = 0
    var count = 1
    while result.count < n {
        if count == target {
            result.append(circle[index])
            circle.remove(at: index)
            count = 1
        } else {
            let number = circle[index]
            circle.append(number)
            count += 1
            index += 1
        }
    }
}

solution()
result.forEach{ answer += "\($0), " }
answer.removeLast()
answer.removeLast()
answer += ">"
print(answer)