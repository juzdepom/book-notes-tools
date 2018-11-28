import Foundation

let fileName = CommandLine.arguments[1]

let fileContents = try! String(contentsOfFile:fileName)
let lines = fileContents.components(separatedBy: "\n")

for line in lines {
   if line != "Add a note" {
   var newLine = line
    if let range = newLine.range(of: "Read more at location") {
   newLine.removeSubrange(range.lowerBound..<newLine.endIndex)
    }
    print(line)
   }

}
