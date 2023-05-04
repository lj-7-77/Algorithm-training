func solution(_ score:[[Int]]) -> [Int] {
    var array = Array(repeating: 0, count: score.count)
    let average: [Double] = score.map { (Double($0[0]) + Double($0[1]))/2 }
    let sortedAverage = average.sorted(by: >)

    for i in 0..<average.count {
        let index: Int = sortedAverage.firstIndex(of: average[i])!
        array[i] = index+1
    }
    
    return array
}