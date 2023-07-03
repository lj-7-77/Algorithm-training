func solution(_ s:String) -> Int {
    var text: [String] = s.map{ String($0)}
    var stack: [String] = []

    for i in 0..<text.count {
        if stack.isEmpty {
            stack.append(text[i])
        } else if stack.last! == text[i] {
            stack.removeLast()
        } else {
            stack.append(text[i])
        }
    }
    
    return stack.isEmpty ? 1 : 0
}