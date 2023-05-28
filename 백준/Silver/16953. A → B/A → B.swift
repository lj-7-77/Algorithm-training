let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let current = input[0], target = input[1]
var initCount = 0
var isConverted: Bool = false

func solution(_ current: Int, _ count: Int) {
    if current > target {
        return
    } else if current == target {
        print(count+1)
        isConverted = true
        return
    } else {
        solution(calculationFirst(current), count+1)
        solution(calculationSecond(current), count+1)
    }
}
 
func calculationFirst(_ number: Int) -> Int {
    return number*2
}

func calculationSecond(_ number: Int) -> Int {
    return number*10+1
}

solution(current, initCount)
if isConverted == false {
    print(-1)
}