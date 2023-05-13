func solution(_ arr:[Int]) -> Double {
    return (arr.map{ Double($0) }).reduce(0, +) / Double(arr.count)
}