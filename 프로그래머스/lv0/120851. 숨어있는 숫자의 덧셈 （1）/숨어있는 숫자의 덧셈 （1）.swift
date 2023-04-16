
func solution(_ my_string:String) -> Int {
    let sum: Int = my_string.filter{ $0.isNumber }.map { Int(String($0))! }.reduce(0, +)
    
    return sum
}