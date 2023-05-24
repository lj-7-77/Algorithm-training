let n = Int(readLine()!)!
var paper = [[Int]]()
var minusCount: Int = 0
var zeroCount: Int = 0
var plusCount: Int = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    paper.append(input)
}

func recursion(_ startRow: Int, _ startCol: Int, _ length: Int) {

    let flag = checkElement(startRow, startCol, length)
    if flag == true {
        if paper[startRow][startCol] == -1 {
            minusCount += 1
        } else if paper[startRow][startCol] == 0 {
            zeroCount += 1
        } else if paper[startRow][startCol] == 1 {
            plusCount += 1
        }
        return
    } else {
        recursion(startRow, startCol, length/3)
        recursion(startRow, startCol+length/3, length/3)
        recursion(startRow, startCol+length/3*2, length/3)
        
        recursion(startRow+length/3, startCol, length/3)
        recursion(startRow+length/3, startCol+length/3, length/3)
        recursion(startRow+length/3, startCol+length/3*2, length/3)
        
        recursion(startRow+length/3*2, startCol, length/3)
        recursion(startRow+length/3*2, startCol+length/3, length/3)
        recursion(startRow+length/3*2, startCol+length/3*2, length/3)
    }

}

func checkElement(_ startRow: Int, _ startCol: Int, _ length: Int) -> Bool {
    let firstElement = paper[startRow][startCol]

    for i in startRow..<startRow+length {
        for j in startCol..<startCol+length {
            if paper[i][j] != firstElement {
                return false
            }
        }
    }

    return true
}

recursion(0,0,n)
print("\(minusCount)\n\(zeroCount)\n\(plusCount)")