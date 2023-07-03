func solution(_ sizes:[[Int]]) -> Int {
    
    var cards: [[Int]] = sizes
    var maxW: Int = 0
    var maxH: Int = 0
    
    for index in 0..<cards.count {
        cards[index].sort()
        maxH = max(maxH, cards[index][0])
        maxW = max(maxW, cards[index][1])
    }
    
    return maxH * maxW
}