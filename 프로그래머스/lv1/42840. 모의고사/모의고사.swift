
func solution(_ answers:[Int]) -> [Int] {
    var studentA = Array(repeating: 0, count: answers.count)
    var studentB = [2, 1, 2, 3, 2, 4, 2, 5]
    var studentC = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var score = Array(repeating: 0, count: 3)
    var result = [Int]()
    
    for i in 0..<answers.count {
        if (i + 1) % 5 == 0 {
            studentA[i] = 5
        } else {
            studentA[i] = (i + 1) % 5
        }
        
        if i == studentB.count-1 {
            studentB += studentB
        }
        
        if i == studentC.count-1 {
            studentC += studentC
        }

        if answers[i] == studentA[i] { score[0] += 1 }
        if answers[i] == studentB[i] { score[1] += 1 }
        if answers[i] == studentC[i] { score[2] += 1 }
    }
    let maxValue: Int = score.max()!
    
    for i in 0..<score.count {
        if score[i] == maxValue {
            result.append(i+1)
        }
    }
    
    return result.sorted(by: <)
}