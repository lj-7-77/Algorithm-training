import Foundation

func solution(_ rsp:String) -> String {
    let char = rsp.map { String($0) }
    var result: String = ""
    for i in 0..<rsp.count {
        switch char[i] {
        case "2":
            result.append("0")
        case "0":
            result.append("5")
        case "5":
            result.append("2")
        default:
            break
        }
    }
    return result
}