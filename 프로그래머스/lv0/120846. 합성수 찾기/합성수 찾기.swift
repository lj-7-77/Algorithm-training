func solution(_ n:Int) -> Int {
    var compositeNumber = 0
    
    for i in 1...n {
        var measure = 0
        for j in 1...i {
            if i % j == 0 {
                measure += 1
            }
        }
        if measure > 2 {
            compositeNumber += 1
        }
    }
    return compositeNumber
}