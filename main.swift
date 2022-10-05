var unsortedStrings = [String]();

while let line = readLine() {
    if(line.count == 0) {break;}
    unsortedStrings.append(line)
}

// Add your code below:

func swap(integers: inout [String], firstIndex:Int, secondIndex:Int) { // Swap two places in an integer array
    let temp = integers[secondIndex]
    integers[secondIndex] = integers[firstIndex]
    integers[firstIndex] = temp
}

var strings = unsortedStrings

var passes = 0;
var totalSwaps = 0;

print("Pass: \(passes), Swaps: 0/\(totalSwaps), Array: \(strings)")

// loop through the array starting at 1 (so has something to compare to 1-1 = 0)
for i in 1..<strings.count {
    var swaps = 0
    var j = i;

    // loops through the current index until the start of the array (works backwards), comparing two elements each time
    while j > 0 && strings[j] < strings[j - 1] {
        swap(integers: &strings, firstIndex: j - 1, secondIndex: j)
        j -= 1
        swaps += 1
        totalSwaps += 1;
    }

    // prints the wanted output
    passes += 1;
//    print("Pass: \(passes), Swaps: \(swaps)/\(totalSwaps), Array: \(strings)")
}
print(strings)
