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

//var each = function(array, func) {
//  for (var i = 0; i < array.length; i++) {
//    func(array[i]);
//  };
//};

function match(obj1,obj2) {
  return Object.keys(obj1).reduce(function(key,value) {
    if (obj1[value] === obj2[value]) key[value] = obj2[value];
    return key;
    //returns matching keys
  }, {});
}

var him = {name: "Steven", age: 54};
var her = {name: "Tamir", age: 54}


// DRIVER CODE
//
//
console.log(longest(phrases));
console.log(match(him, her));
//each(dude, match(dude, girl))