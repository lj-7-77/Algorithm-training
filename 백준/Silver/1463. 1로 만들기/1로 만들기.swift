let n = Int(readLine()!)!
var d = Array(repeating: 0, count: 1000010)

solution(n)

func solution(_ n: Int) {
    d[1] = 0
    guard n != 1 else {
        print(d[n])
        return
    }
    
    for i in 2...n {
        d[i] = d[i-1] + 1
        if i%2 == 0 {
            d[i] = min(d[i], d[i/2]+1)
        }
        if i%3 == 0 {
            d[i] = min(d[i], d[i/3]+1)
        }
    }
    print(d[n])
}