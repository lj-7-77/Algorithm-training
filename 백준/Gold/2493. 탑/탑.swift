let n = Int(readLine()!)!
let towers = readLine()!.split(separator: " ").map{ Int(String($0))! }

var indexStack = [0]
var result = "0 "


func solution() {
    
    for i in 1..<n {
        while indexStack.isEmpty == false, towers[indexStack.last!] < towers[i] {
            let _ = indexStack.removeLast()
        }
        
        if indexStack.isEmpty == false {
            result += "\(indexStack.last! + 1)" + " "
        } else {
            result += "0" + " "
        }
        indexStack.append(i)
    }
}

solution()
print(result)