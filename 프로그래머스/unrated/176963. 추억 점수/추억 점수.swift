func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var sum = 0, result = [Int]()
    
    photo.forEach {
        sum = 0
        for i in 0..<$0.count {
            if name.contains($0[i]) == false { continue }
            let index = name.firstIndex(of: $0[i])!
            sum += yearning[index]
        }
        result.append(sum)
    }
    
    return result
}