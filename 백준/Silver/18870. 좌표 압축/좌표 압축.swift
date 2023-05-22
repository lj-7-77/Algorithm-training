let n = Int(readLine()!)!
var numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
var uniqueNumbers = [Int]()
var result: String = ""

func findIndex(_ target: Int) -> Int {
    var start = 0
    var end = uniqueNumbers.count-1
    var mid = (start+end)/2
    
    while start < end {
        mid = (start+end)/2
        if uniqueNumbers[mid] < target {
            start = mid+1
        } else if target < uniqueNumbers[mid] {
            end = mid
        } else if target == uniqueNumbers[mid] {
            return mid
        }
    }
    return start
}

let sortedNumbers = numbers.sorted(by:<)
uniqueNumbers.append(sortedNumbers.first!)

for i in 1..<n {
    if sortedNumbers[i-1] == sortedNumbers[i] { continue }
    uniqueNumbers.append(sortedNumbers[i])
}
    
numbers.forEach {
    result += "\(findIndex($0))" + " "
}

print(result)