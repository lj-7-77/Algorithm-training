func solution(_ wallpaper:[String]) -> [Int] {
    var background = Array(repeating: [String](), count: wallpaper.count)
    var minX: Int = wallpaper.count
    var maxX: Int = 0
    var minY: Int = wallpaper[0].count
    var maxY: Int = 0
    
    for i in 0..<wallpaper.count {
        background[i] = wallpaper[i].map{ String($0) }
    }
    
    for row in 0..<background.count {
        for col in 0..<background[0].count {
            if background[row][col] == "#" {
                minX = min(minX, row)
                maxX = max(maxX, row)
                
                minY = min(minY, col)
                maxY = max(maxY, col)
            }
        }
    }
    
    let s = (minX, minY)
    let e = (maxX, maxY)
    
    return [s.0, s.1, e.0+1, e.1+1]
}