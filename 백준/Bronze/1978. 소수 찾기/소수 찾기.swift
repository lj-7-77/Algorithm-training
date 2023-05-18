let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
var count: Int = 0

solution()
print(count)

func solution() {
    for k in 0..<n {
        let number = input[k]
        
        if number == 1 { continue }
        
        for i in 2...number {
            if number % i != 0 {
                continue
            } else if i * i <= number {
                break
            } else {
                count += 1
            }
        }
    }
}