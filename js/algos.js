// write function takes array, returns object with most chars
//
// function should accept array
//
// create blank string
//
// if current object is longer than string, reassign variable
//
//
//
//
//
//
//
//
//
//
//
//

var phrases = ["long phrase","longest phrase","longer phrase"]

function Longest(array) {
  this.array = array;
  this.longest = "";
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > longest.length) {
      longest = array[i]
    };
  };
  return longest
}

console.log(Longest(phrases))