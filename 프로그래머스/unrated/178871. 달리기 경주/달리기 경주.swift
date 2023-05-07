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
        
        dict[callings[i]]! -= 1      //이름이 불린 선수의 등수 -1
        dict[frontPlayer]! += 1     //앞에있던 선수의 등수 +1
    }
    return playersRace
}

/*
 //오답 1: 시간초과(테스트7~13번)
 // .firstIndex(of:) 의 시간복잡도 O(n)으로 인해 시간초과였던 것을 딕셔너리를 이용해 개선
 func solution(_ players:[String], _ callings:[String]) -> [String] {
     var playersRace = players
     for name in 0..<callings.count {
         let index = playersRace.firstIndex(of: callings[name])!
         if index == 0 { continue }
         playersRace.swapAt(index, index-1)
     }
     return playersRace
 }
 
 */
