let t = Int(readLine()!)!
var d = Array(repeating: 0, count: 20)

for _ in 0..<t {
    let input = Int(readLine()!)!
    solution(input)
}

func solution(_ n: Int) {
    d[1] = 1
    d[2] = 2 
    d[3] = 4 
    
    guard n > 3 else {
        print(d[n])
        return
    }
    
    for i in 4...n {
        d[i] = d[i-1] 
        d[i] += d[i-2] 
        d[i] += d[i-3] 
    }
  
    print(d[n])
}