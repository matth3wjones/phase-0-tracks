// PSEUDOCODING
//
// function takes string as parameter and reverses
// reverse("hello") => "olleh"
//
// for each character in the string, iterate through the string
// build new string with letters in new order
//
// for each char remove last index, or the and place in new string
//
//

var word = "jones"
console.log(word)

function reverse(word) {
  this.string = "";
  for (var i = word.length - 1; i >= 0 ; i--) {
    string += word[i];
  }
  return string
}

console.log(reverse("hello"));






//
//
//
//
//
//
//
//
//