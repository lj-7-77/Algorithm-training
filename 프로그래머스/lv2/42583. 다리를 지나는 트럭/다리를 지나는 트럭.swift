func solution(_ bridge_length: Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var trucks: [Int] = truck_weights.reversed() 
    var time: Int = 0
    var bridge = Array(repeating: 0, count: bridge_length)
    var sum: Int = 0
    
    while trucks.count > 0 {
        time += 1
        sum -= bridge.removeFirst()
        
        if sum + trucks.last! <= weight {
            let truck = trucks.removeLast()
            bridge.append(truck)
            sum += truck
        } else {
            bridge.append(0)
        }
    }
    
    return time + bridge_length
}