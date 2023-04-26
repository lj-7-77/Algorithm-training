func solution(_ num:Int, _ total:Int) -> [Int] {
    var result = [Int]()
    
    if num == 1 {
        result = [total]
    } else {
        
        for i in -10000...abs(total-num) {
            var sum: Int = 0
            var array = [Int]()
            for j in 0..<num {
                sum += (i + j)
                array.append(i+j)
            }
            if sum == total {
                result = array
            }
        }
    }
    return result
}