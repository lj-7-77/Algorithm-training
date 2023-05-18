let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let m = input[0], n = input[1]
var array = Array(repeating: 0, count: n+1)
var primes: String = ""

for i in 2...n {
    array[i] = i
}

for i in 2...n {
    if array[i] == 0 { continue }
    for j in stride(from: i+i, through: n, by: i){ 
        array[j] = 0
    }
}

for i in m...n {
    if array[i] != 0 {
        primes += "\(array[i])" + "\n"
    }
}

print(primes)