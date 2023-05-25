let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], m = input[1]
var numbers = [Int]()

func solution() {
    var minValue = Int.max
    var end: Int = 0
    
    for start in 0..<n {
        end = start
        while end < n, numbers[end] - numbers[start] < m {
            end += 1
        }
        if end == n { break }
        minValue = min(minValue, numbers[end] - numbers[start])
    }

    print(minValue)
}

for _ in 0..<n {
    numbers.append(Int(readLine()!)!)
}

numbers.sort()
solution()