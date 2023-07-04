func solution(_ land: [[Int]]) -> Int {
    var d = land

    for row in 1..<land.count {
        d[row][0] += max(d[row-1][1], d[row-1][2], d[row-1][3])
        d[row][1] += max(d[row-1][0], d[row-1][2], d[row-1][3])
        d[row][2] += max(d[row-1][0], d[row-1][1], d[row-1][3])
        d[row][3] += max(d[row-1][0], d[row-1][1], d[row-1][2])
    }
    
    return d[land.count-1].max()!
}