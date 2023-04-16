func solution(_ n:Int) -> Int {
    var array = [Int]()
    var factorial = 1
    
    for i in 1...20 {
        factorial *= i
        if factorial <= n {
            array.append(i)
        } else {
            break
        }
    }
    return array.last!
}