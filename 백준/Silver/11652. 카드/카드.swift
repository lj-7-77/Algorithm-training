import Foundation

let n = Int(readLine()!)!
var numbers = [Int]()

let decimalValue = -(pow(2.0, 62))
var value: Int = Int(decimalValue)
var count: Int = 0
var maxCount: Int = 0

for _ in 0..<n {
    let input = Int(readLine()!)!
    numbers.append(input)
}
numbers = numbers.sorted(by: <)
var mostFrequentValue = numbers[0]

for i in 0..<numbers.count {
    if value != numbers[i] {
        value = numbers[i]
        count = 1
    } else {
        count += 1
    }
    
    if count > maxCount {
        maxCount = count
        mostFrequentValue = value
    }
}

print(mostFrequentValue)