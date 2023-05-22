let n = Int(readLine()!)!
var numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
let m = Int(readLine()!)!
let targetNumbers = readLine()!.split(separator: " ").map { Int(String($0))! }
var result: String = ""

func lowerIndex(_ target: Int) -> Int {
    var start: Int = 0
    var end: Int = n
    var mid: Int = n/2
    
    while start < end {
        if numbers[mid] < target {
            start = mid+1
        } else if numbers[mid] >= target {
            end = mid
        }
        mid = (start+end)/2
    }
    return start
}

func upperIndex(_ target: Int) -> Int {
    var start: Int = 0
    var end: Int = n
    var mid: Int = n/2
    
    while start < end {
        if numbers[mid] <= target {
            start = mid+1
        } else if numbers[mid] > target {
            end = mid
        }
        mid = (start+end)/2
    }
    return start
}

numbers.sort()
targetNumbers.forEach {
    result += ("\(upperIndex($0) - lowerIndex($0))" + " ")
}
print(result)