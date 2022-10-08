import Foundation
func Sort(unsortedWords: [String]) {
    var sortedWords = unsortedWords
    var swapTotal = 0
    var currentSwap = 0
    //    print("Pass: 0, Swaps: 0/0, Array: \(sortedWords)")
    for current in 1 ..< sortedWords.count {
        currentSwap = 0
        var k = -1
        //sortedIntegers[current+(k+1)] = second in list
        //sortedIntegers[current+k] = first in list
        while sortedWords[current+k] > sortedWords[current+(k+1)] {
            let temp = sortedWords[current+(k+1)]
            sortedWords[current+(k+1)] = sortedWords[current+k]
            sortedWords[current+k] = temp
            swapTotal += 1
            currentSwap += 1
            k -= 1
            if current + k < 0 {
                break
            }
        }
                //        print("Pass: \(current), Swaps: \(currentSwap)/\(swapTotal), Array: \(sortedWords)")
    }
}
var unsortedWords : [String] = []
while let input = readLine() {    
    unsortedWords.append(input.lowercased())
}
Sort(unsortedWords: unsortedWords)
