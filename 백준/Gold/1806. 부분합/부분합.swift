let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0], s = input[1]
var numbers = readLine()!.split(separator: " ").map{ Int(String($0))! }

func solution() {
    var minLength = n*n
    var end = 0
    var sum = numbers[0]

    for start in 0..<n {
        while end < n, sum < s {
            end += 1
            if end != n {
                sum += numbers[end]
            }
        }
        if end == n { break }
        minLength = min(minLength, end - start + 1)
        sum -= numbers[start]
    }
    
    if minLength == n*n {
        minLength = 0
    }
     
    print(minLength)
}

solution()