let n = Int(readLine()!)!
var meetings = [(endT: Int, startT: Int)]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    meetings.append((input[1], input[0]))
}

solution(meetings)

func solution(_ meetings: [(endT: Int, startT: Int)]) {
    let sortedMeetings = meetings.sorted(by: <)
    var beforeEndTime: Int = 0
    var count: Int = 0
    
    sortedMeetings.forEach {
        if beforeEndTime <= $0.startT {
            count += 1
            beforeEndTime = $0.endT
        }
    }
    print(count)
}