let n = Int(readLine()!)! //동기의 수
let m = Int(readLine()!)! //리스트의 길이
var array = Array(repeating: [Int](), count: n+1)
var visit = Array(repeating: false, count: n+1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    array[input[0]].append(input[1])
    array[input[1]].append(input[0])
}

visit[1] = true
for i in 0..<array[1].count {
    dfs(array[1][i], 1)
}

let count = visit.filter{ $0 == true }.count
print(count-1)

func dfs(_ point: Int, _ depth: Int) {
    if depth > 2 {
        return
    }
    visit[point] = true
    
    for index in array[point] {
        if visit[index] == true { continue }
        dfs(index, depth + 1)
    }
}