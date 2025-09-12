import Foundation

let str = "#*+.:|/\\-=_"

func charAt(_ str:String, _ offset:Int) -> String {
let index = str.index(str.startIndex, offsetBy: offset)
let char = str[index]
return String(char)
}

func generateLine(_ length: Int) {
    var line = ""
    for _ in 0..<length {
        let randomInt = Int.random(in: 0..<str.count)
        line += charAt(str, randomInt)
    }
    print(line)
}

func generateBlock(_ size: Int) {
    for _ in 0..<size {
        generateLine(size)
    }
}

func generatepattern(_ size: Int) {
let chars = Array(str)
for row in 0..<size {
let ch = chars[row % chars.count]
let line = String(repeating: ch, count: size)
print(line)
}
}

generateBlock(10)

generatepattern(10)
