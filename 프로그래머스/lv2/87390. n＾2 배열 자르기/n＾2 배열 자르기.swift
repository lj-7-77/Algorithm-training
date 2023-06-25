func solution(_ n: Int, _ left: Int64, _ right: Int64) -> [Int] {
        
    let leftRow: Int = Int(left) / n            //1행
    let leftCol: Int = Int(left) % n        //3열 부터
    let length: Int = Int(right) - Int(left) + 1 //8개원소 추출
    
    var result = [Int]()
    var index = 0
    var row: Int = leftRow
    var col: Int = leftCol
    
    while result.count != length {
        result.append(max(row, col) + 1)
        col += 1
        if col > n-1 {
            col = 0
            row += 1
        }
        
        index += 1
    }
    
    return result
}