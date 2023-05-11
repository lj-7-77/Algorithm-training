let n = Int(readLine()!)!
var d = Array(repeating: 0, count: 1005)

solution(n)

func solution(_ n: Int) {
    d[1] = 1
    d[2] = 2
    
    if n == 1 || n == 2 {
        print(d[n]%10007)
        return
    } else {
        for i in 3...n {
            d[i] = (d[i-1] + d[i-2])%10007
        }
        print(d[n])
    }
}