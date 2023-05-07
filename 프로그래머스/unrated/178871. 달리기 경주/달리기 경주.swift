func solution(_ players:[String], _ callings:[String]) -> [String] {
    var playersRace = players
    var dict = [String:Int]()
    for i in 0..<players.count {
        dict.updateValue(i+1, forKey: players[i])
    }
    
    for i in 0..<callings.count {
        let index = dict[callings[i]]!
        playersRace.swapAt(index-1, index-2)
        let frontPlayer: String = playersRace[index-1]
        
        dict[callings[i]]! -= 1
        dict[frontPlayer]! += 1
    }
    return playersRace
}