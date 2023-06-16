func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var mailReceiveCount = Array(repeating: 0, count: id_list.count)
    var reportDictionary = [String: Set<String>]() //id(신고당함) : id(신고함)
    var mailList = [String]()
    
    id_list.forEach {
        reportDictionary[$0] = []
    }

    for text in report {
        let input = text.split(separator: " ").map{ String($0) }
        reportDictionary[input[1]]?.insert(input[0])
    }
    
    reportDictionary.forEach {
        if $0.value.count >= k { 
            mailList += $0.value.map{ id in
                return id
            }
        }
    }
    
    mailList.forEach { 
        let index = id_list.firstIndex(of: $0)!
        mailReceiveCount[index] += 1
    }
    
    return mailReceiveCount
}
