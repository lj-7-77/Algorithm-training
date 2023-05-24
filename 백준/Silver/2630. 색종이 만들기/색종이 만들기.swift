let n = Int(readLine()!)!
var paper = [[Int]]()
var whiteCount: Int = 0
var blueCount: Int = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    paper.append(input)
}

func recursion(_ startRow: Int, _ startCol: Int, _ length: Int) {

    let flag = checkElement(startRow, startCol, length)
    if flag == true {
        if paper[startRow][startCol] == 0 {
            whiteCount += 1
        } else {
            blueCount += 1
        }
        return
        
    } else {
        recursion(startRow, startCol, length/2)
        recursion(startRow, startCol+length/2, length/2)
        recursion(startRow+length/2, startCol, length/2)
        recursion(startRow+length/2, startCol+length/2, length/2)
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
print("\(whiteCount)\n\(blueCount)")