func solution(_ s:String) -> Int {
    var count: Int = 0
    var newString: String = s
    
    for _ in 0..<s.count {
        if checkString(newString) {
            count += 1
        }
        
        newString = newString + String(newString.first!)
        newString.removeFirst()
    }
    
    return count
}

func checkString(_ newS: String) -> Bool {
    var stack = [String]()
    
    for s in newS {
        let letter = String(s)
        switch letter {
        case "(":
            fallthrough
        case "{":
            fallthrough
        case "[":
            stack.append(letter)
        case ")":
            if stack.last == "(" {
                stack.popLast()
            } else {
                return false
            }
        case "}":
            if stack.last == "{" {
                stack.popLast()
            } else {
                return false
            }
        case "]":
            if stack.last == "[" {
                stack.popLast()
            } else {
                return false
            }
        default:
            break
        }
    }
    
    return stack.isEmpty ? true : false
}