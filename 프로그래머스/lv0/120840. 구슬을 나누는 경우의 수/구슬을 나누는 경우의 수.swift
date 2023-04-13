import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
    var n = balls
    var result: Int = 1
    
    for i in 1...share {
        result = (result * n)/i
        n -= 1
    }
    return result
}