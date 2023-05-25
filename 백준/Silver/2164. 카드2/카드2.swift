let n = Int(readLine()!)!
var cards = [Int]()

for number in 1...n {
    cards.append(number)
}

let lastCard = solution()
print(lastCard)

func solution() -> Int {
    var a: Int = 0
    var b: Int = 1
    
    if cards.count == 1 {
        return cards[0]
    }
    while cards[a] != cards[b] {
        cards.append(cards[b])
        a += 2
        b = a+1
        if b == cards.count { break }
    }
    return cards[a]
}