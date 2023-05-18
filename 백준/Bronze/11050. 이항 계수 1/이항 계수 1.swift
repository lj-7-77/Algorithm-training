let combination = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = combination[0], k = combination[1]

func factorial(_ n: Int) -> Int {
    var value = 1
    if n == 0 || n == 1 { return 1 }
    
    for i in 2...n {
        value *= i
    }
    return value
}

let result = factorial(n) / (factorial(n-k) * factorial(k))

print(result)