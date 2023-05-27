let n = Int(readLine()!)!
var result: String = ""
let poleNumberSum = (1...3).reduce(0,+)
var moveCount: Int = 0

func recursion(_ count: Int, from poleA: Int, to poleB: Int) {
    moveCount += 1
    let poleC = poleNumberSum-poleA-poleB
    
    if count == 1 {
        result += "\n\(poleA) \(poleB)"
        return
    }
    recursion(count-1, from: poleA, to: poleC)
    result += "\n\(poleA) \(poleB)"
    recursion(count-1, from: poleC, to: poleB)
}

recursion(n, from: 1, to: 3)
print(moveCount,result)