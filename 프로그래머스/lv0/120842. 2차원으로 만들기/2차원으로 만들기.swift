import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    let row = (num_list.count)/n //4행
    let col = n //2열
    var result = Array(repeating: Array(repeating: 0, count: col), count: row)
    var index = 0
    
    for i in 0..<row { // 0~3
        for j in 0..<col { //0~1
            print("[\(i)][\(j)] = \(num_list[index])")
            result[i][j] = num_list[index]
            index += 1
        }
    }
    return result
}