import UIKit

func naiveSumFromOne(upto n: Int) -> Int {
    var result = 0
    for i in 1...n {
        result += i
    }
    return result
}

func reduceSumFromOne(upto n: Int) -> Int {
    return (1...n).reduce(0, +)
}

func gaussSumFromOne(upto n: Int) -> Int {
    return (n + 1) * n / 2
}

naiveSumFromOne(upto: 1000)
reduceSumFromOne(upto: 1000)
gaussSumFromOne(upto: 1000)
