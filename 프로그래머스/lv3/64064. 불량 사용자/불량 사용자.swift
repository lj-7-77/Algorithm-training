func solution(_ user_id: [String], _ banned_id: [String]) -> Int {
    var filterResult = [[String]]() //[["frodo", "fradi"], ["abc123"]]
    var sets = Set<Set<String>>()

    for id in banned_id {
        let bannedId = id.map{ String($0) } //["f", "r", "*", "d", "*"]
        let output = filterId(bannedId, user_id) //일반사용자 중 불량id와 일치하는 id
        
        if output.isEmpty == false { //있을때만 추가
            filterResult.append(output) //filterResult: [["frodo", "fradi"], ["abc123"]]
        }
    }

    func recursion(_ array: [String] = [String](), _ depth: Int = 0) { //depth가 불량사용자 길이가 될 때까지
        if depth == banned_id.count {
            let set = Set(array.map{$0})
            sets.update(with: set)
            return
        }
        var array = array
        for i in 0..<filterResult[depth].count {
            let id = filterResult[depth][i]
            if array.contains(id) { continue }
            array.append(id)
            recursion(array, depth + 1)
            let _ = array.removeLast()
        }
    }
    
    recursion()    
    return sets.count
}

//bannedId: ["f", "r", "*", "d", "*"]
//user_id: ["frodo", "fradi", "crodo", "abc123", "frodoc"]
func filterId(_ bannedId: [String], _ user_id: [String]) -> [String] {
    var equalResult = [String]()
    var starIndex = [Int]()
    
    for index in 0..<bannedId.count {
        if bannedId[index] == "*" {
            starIndex.append(index)
        }
    }
    
    for userId in user_id {
        if bannedId.count != userId.count { continue }
        
        var id = userId.map{ String($0) } //["f", "r", "o", "d", "o"]
        starIndex.forEach { id[$0] = "*" }
        
        if id.joined() == bannedId.joined() {
            equalResult.append(userId)
        }
    }
    
    return equalResult
}