func solution(_ lines:[[Int]]) -> Int {
    var result = [Int]()
    for value in (lines[0][0]+1)...lines[0][1] {
        if ((lines[1][0]+1)...lines[1][1]).contains(value) ||
            ((lines[2][0]+1)...lines[2][1]).contains(value) {
            if result.contains(value) == false {
                result.append(value)
            }
        }
    }
    
    for value in (lines[1][0]+1)...lines[1][1] {
        if ((lines[2][0]+1)...lines[2][1]).contains(value) {
            if result.contains(value) == false {
                result.append(value)
            }
        }
    }
    
    return result.count
}