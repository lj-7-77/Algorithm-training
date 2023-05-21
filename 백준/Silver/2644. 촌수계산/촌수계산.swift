let n = Int(readLine()!)!
let twoPerson = readLine()!.split(separator: " ").map{ Int(String($0))! }
let start = twoPerson[0], end = twoPerson[1]
var count: Int = 0

var array = Array(repeating: [Int](), count: n+1)
var visit = Array(repeating: -1, count: n+1)
let k = Int(readLine()!)!

for _ in 0..<k {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    array[input[0]].append(input[1])
    array[input[1]].append(input[0])
}

func dfs(_ now: Int) {
    if now == end { return }
    
    for i in 0..<array[now].count {
        let element = array[now][i]
        if visit[element] >= 0 {
            continue
        } else {
            count += 1
            visit[element] = count
            dfs(element)
        }
        
        if visit[end] < 0 {
            count -= 1
        }
    }
}

visit[start] = 0
dfs(start)
print(visit[end])