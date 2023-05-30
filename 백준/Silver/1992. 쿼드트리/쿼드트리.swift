let n = Int(readLine()!)!
var video = Array(repeating: [Int](), count: n)

for i in 0..<n {
    let input = readLine()!.map { Int(String($0))! }
    video[i] = input
}

func solution(_ point: (Int, Int), _ size: Int) {
    
    let isSameElement: Bool = compress((point.0, point.1), size)
    
    if isSameElement == true {
        print(video[point.0][point.1], terminator: "")
        return
    } else {
        print("(", terminator: "")
        solution((point.0, point.1), size / 2)
        solution((point.0, point.1 + size / 2), size / 2)
        solution((point.0 + size / 2, point.1), size / 2)
        solution((point.0 + size / 2, point.1 + size / 2), size / 2)
    }
    print(")", terminator: "")
}

func compress(_ start: (r: Int, c: Int), _ size: Int) -> Bool {
    for row in start.r..<start.r+size {
        for col in start.c..<start.c+size {
            if video[row][col] != video[start.r][start.c] {
                return false
            }
        }
    }
    
    return true
}

solution((0,0), n)