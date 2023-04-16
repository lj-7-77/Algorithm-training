func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var newNumbers = numbers
    
    if direction == "right" {
        let value = newNumbers.removeLast()
        newNumbers.insert(value, at: 0)
    }
    
    if direction == "left" {
        let value = newNumbers.removeFirst()
        newNumbers.append(value)
    }
    return newNumbers
}