var n = Int(readLine()!)!
var primes = [Int]()

for i in 1...n {
    if i == 1 { continue }
    if n%i == 0 {
        while n%i == 0 {
            n = n/i
            primes.append(i)
        }
    }
}

primes.forEach {
    print($0)
}