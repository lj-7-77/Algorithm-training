func solution(_ priorities:[Int], _ location:Int) -> Int {
    var queue: [(process: Int, priority: Int)] = []
    var result: [(process: Int, priority: Int)] = []
    
    for i in 0..<priorities.count {
        queue.append((i, priorities[i]))
    }
    
    while result.count < priorities.count {
        var task = queue.first!
        
        if checkPriority(task, queue) {
            queue.append(task)
            queue.removeFirst()
        } else {
            queue.removeFirst()
            result.append(task)
        }
    }
    
    var order: Int = 0
    for index in 0..<result.count {
        if result[index].process == location {
            order = index + 1
        }
    }
    
    return order
}


func checkPriority(_ task: (process: Int, priority: Int), _ queue: [(process: Int, priority: Int)]) -> Bool {
    for i in 0..<queue.count {
        if task.priority < queue[i].priority {
            return true
        }
    }
    return false
}