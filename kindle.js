// process.argv.forEach((val, index) => {
//   console.log(`${index}: ${val}`);
// });


// argv[0]--> /usr/local/bin/node
// argv[1]--> /Users/julia/Desktop/Kindle/kindle.js
// 2: hello

//like an import in Swift; fs is a library. It represents filesystem
var fs = require("fs");

var fileName = process.argv[2]
// console.log(fileName)

var data = fs.readFileSync(fileName);
//console.log("Synchronous read: " + data.toString());

var lines = data.toString().split("\n");
lines.forEach(function(line, index){
  if (line == "Add a note") {
    return
  }
  var index = line.indexOf("Read more at location")
  if (index != -1) {
    line = line.substring(0,index)
  }
  console.log(line)
  // console.log(index)

  // console.log(index)
})
