var input = readLine()!.split(separator: " ").map{ Int(String($0))! }
var result: [Int] = []

while input.first! != 0 {
    let k = input.removeFirst()
    let s = input
    
    dfs(s, 0, 0)
    
    input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    print("")
    result = []
}

func dfs(_ numbers: [Int], _ index: Int, _ depth: Int) {
    
    if depth >= 6 {
        result.sort()
        result.forEach {
            print($0, terminator: " ")
        }
        print("")
        return
    }
    
    for i in index..<numbers.count {
        let value: Int = numbers[i]
        if result.contains(value) { continue }
        result.append(value)
        dfs(numbers, i, depth + 1)
        let _ = result.popLast()!
    }
}