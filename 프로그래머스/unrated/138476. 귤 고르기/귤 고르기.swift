func solution(_ k: Int, _ tangerine: [Int]) -> Int {
    var tan = tangerine
    var tangerineSizes = Array(repeating: 0, count: tan.max()!+1)
    var count: Int = 0
    
    tan.forEach {
        tangerineSizes[$0] += 1
    }
    tangerineSizes = tangerineSizes.sorted(by: >)
    
    for i in 0..<tangerineSizes.count-1 {
        count += tangerineSizes[i]
        if count >= k {
            return i + 1
        }
    }
    
    return k
}