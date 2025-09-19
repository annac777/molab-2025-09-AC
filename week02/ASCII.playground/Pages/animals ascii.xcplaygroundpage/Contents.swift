
import Foundation

let path = Bundle.main.path(forResource: "cat.txt", ofType: nil)
let str = try String(contentsOfFile: path!, encoding: .utf8)
print(str)


func load(_ file :String) -> String {
  let path = Bundle.main.path(forResource: file, ofType: nil)
  let str = try? String(contentsOfFile: path!, encoding: .utf8)
  return str!
}

print(load("cat&mug.txt"))
print(load("cat&people.txt"))



// Source:
// https://asciiart.website/index.php?art=animals/aardvarks
