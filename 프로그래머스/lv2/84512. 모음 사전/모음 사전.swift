func solution(_ word:String) -> Int {
    
    return dfs(word, "", 0, 0).1
}

func dfs(_ word: String, _ wordCombination: String, _ depth: Int,  _ countWord: Int) -> (String, Int) {
    let moum = ["A", "E", "I", "O", "U"]
    var text = wordCombination
    var count = countWord
    var pair: (text: String, count: Int) = ("", 0)
    
    if text == word {
        return (text, count)
    } else if depth == 5 {
        return (text, count)
    }
    
    for i in 0..<moum.count {
        text += moum[i]
        count += 1
        pair = dfs(word, text, depth + 1, count)
        if pair.text != word {
            text.removeLast()
            count = pair.count
        } else {
            break
        }
    }
    
    return pair
}