let n = Int(readLine()!)!
var paper = Array(repeating: [Int](), count: n)
var minusCount: Int = 0
var zeroCount: Int = 0
var plusCount: Int = 0

for i in 0..<n {
    let input = readLine()!.split(separator: " ").compactMap { Int($0)! }
    paper[i] = input
}

func solution(_ point: (Int, Int), length: Int) {
    
    let isSameNumber = checkElement(point, length)
    if isSameNumber == true {
        switch paper[point.0][point.1] {
        case -1:
            minusCount += 1
        case 0:
            zeroCount += 1
        case 1:
            plusCount += 1
        default:
            break
        }
        return
    } else {
        solution((point.0, point.1), length: length/3)
        solution((point.0, point.1+length/3), length: length/3)
        solution((point.0, point.1+length/3*2), length: length/3)
        solution((point.0+length/3, point.1), length: length/3)
        solution((point.0+length/3, point.1+length/3), length: length/3)
        solution((point.0+length/3, point.1+length/3*2), length: length/3)
        solution((point.0+length/3*2, point.1), length: length/3)
        solution((point.0+length/3*2, point.1+length/3), length: length/3)
        solution((point.0+length/3*2, point.1+length/3*2), length: length/3)
    }
}

func checkElement(_ point: (Int, Int), _ length: Int) -> Bool {
    let target = paper[point.0][point.1]
    
    for i in point.0..<(point.0+length) {
        for j in point.1..<(point.1+length) {
            if paper[i][j] == target {
                continue
            } else {
                return false
            }
        }
    }
    return true
}

solution((0,0),length: n)
print("\(minusCount)\n\(zeroCount)\n\(plusCount)")