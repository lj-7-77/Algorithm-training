import Foundation

func solution(_ box:[Int], _ n:Int) -> Int {
    var result = 1
    for i in 0..<box.count {
        result *= Int(box[i] / n)
    }
    return result
}