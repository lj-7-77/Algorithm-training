let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
var d = [Int]()
var maxValue: Int = 0

d.append(input[0])

for index in 1..<input.count {
    maxValue = max(input[index], d[index-1]+input[index])
    d.append(maxValue)
}

print(d.max()!)