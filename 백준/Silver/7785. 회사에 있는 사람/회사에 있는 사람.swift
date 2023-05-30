let n = Int(readLine()!)!
var result = Set<String>()

func solution(employee: String, record: String ) {
    switch record {
    case "enter":
        result.insert(employee)
    case "leave":
        result.remove(employee)
    default:
        break
    }
}

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").compactMap{ String($0) }
    solution(employee: input[0], record: input[1])
}

result.sorted(by: >).forEach { print($0) }