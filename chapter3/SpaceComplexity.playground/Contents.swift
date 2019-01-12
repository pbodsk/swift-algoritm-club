import UIKit

/**
 Space complexity is a measure of the resources required for the algorithm to run.
 */

func printSorted(_ array: [Int]) {
    let sorted = array.sorted()
    for element in sorted {
        print(element)
    }
}

func memoryCheapSorted(_ array: [Int]) {
    guard !array.isEmpty else { return }
    
    var currentCount = 0
    var minValue = Int.min
    
    for value in array {
        if value == minValue {
            print(value)
            currentCount += 1
        }
    }
    
    while currentCount < array.count {
        var currentValue = array.max()!
        for value in array {
            if value < currentValue && value > minValue {
                currentValue = value
            }
        }
        
        var printCount = 0
        for value in array {
            if value == currentValue {
                print(value)
                currentCount += 1
            }
        }
        minValue = currentValue
    }
}

let elements = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

//printSorted(elements)
memoryCheapSorted(elements)
