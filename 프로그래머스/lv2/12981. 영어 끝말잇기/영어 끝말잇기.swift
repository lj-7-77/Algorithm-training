func solution(_ n:Int, _ words:[String]) -> [Int] {
    var count: Int = 0
    var game = [String]()
    var result = [Int]()
    var lastLetter: Character = words[0].first! //이전 단어의 마지막글자
    
    for index in 0..<words.count {
        let word = words[index]
        let firstLetter: Character = words[index].first! //현재 단어의 첫번째글자
        
        if (index) % n == 0 {
            count += 1
        }
        
        if lastLetter == firstLetter, game.contains(word) == false {
            game.append(word)
            lastLetter = word.last!
        } else if lastLetter != firstLetter || game.contains(word) == true {
            let loser = (index + 1) % n == 0 ? n : (index + 1) % n
            result.append(loser)
            break
        }
    }
    
    if result.isEmpty {
        result = [0, 0]
    } else {
        result.append(count)
    }
    return result
}