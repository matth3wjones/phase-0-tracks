// write function takes array, returns object with most chars
//
// function should accept array
//
// create blank string
//
// if current object is longer than string, reassign variable
//
//

var phrases = ["long phrase","longest phrase","longer phrase"];

function longest(array) {
  this.array = array;
  this.longest = "";
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > longest.length) {
      longest = array[i]
    };
  };
  return longest;
};

// write function takes 2 objects, checks common k/v pair
//
// compare two objects, return like pairs
//



function match(obj1, obj2) {
  return Object.keys(obj1).reduce(function(key,value) {
    if (obj1[value] === obj2[value]) key[value] = obj2[value];
    return key;
    //returns matching keys
  }, {});
};

var him = {name: "Steven", age: 54};
var her = {name: "Tamir", age: 54};
var them = {name: "Jack", age: 53};


// function creates random integer
//
// .floor rounds down to nearest integer
//
//

function randomNum() {
  return (Math.floor(Math.random()*10)+1);
}

// function builds array of strings with random chars
// accepts integer and builds that many strings
//
//
//
//

function randomChar() {
  return String.fromCharCode(Math.floor(97 + Math.random()*26));
}


function randomString(int) {
  var array = [];
  for (var i = 0; i < int; i++) {
    var fakeWord = "";
    var arrayLength = randomNum();
    for (var m = 0; m < arrayLength; m++) {
      fakeWord += randomChar()
    };
    array.push(fakeWord)
  };
  return array;
}

// DRIVER CODE
//
//
// console.log(longest(phrases));
// console.log(match(him, her));
//NEED fail test
// console.log(randomNum());
// console.log(randomChar());
var test = randomString(randomNum())
console.log(longest(test))