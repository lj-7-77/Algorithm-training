func solution(_ numbers: [Int]) -> String {
    var numbers = numbers.map{ String($0) }
    numbers.sort{ $0 + $1 > $1 + $0 }
    
    if numbers.filter{ $0 == "0" }.count == numbers.count {
        return "0"
    }
    
    return numbers.joined()
}