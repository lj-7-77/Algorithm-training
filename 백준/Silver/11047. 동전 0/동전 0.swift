let nk = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = nk[0]
var money = nk[1]
var array = [Int]()
var count: Int = 0

for _ in 0..<n {
    let input = Int(readLine()!)!
    array.append(input)
}

array = array.sorted(by: >)

for i in 0..<array.count {
    if money/array[i] == 0 { continue }
    count += money/array[i]
    money = money%array[i]
}

print(count)