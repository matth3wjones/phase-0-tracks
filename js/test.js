console.log("Hello world!");

var str = "Loop over me!";

// Look at line 8:
// We initialize our counter, set its "while" condition,
// and give the increment command that should happen
// after each iteration of the loop --
// all in one tight line of code!
for (var i = 10; i > 0; i--) {
  console.log(i);
}


var select = function(array, func) {
  var results = [];

  for (var i=0; i < array.length; i++) {
    if (func(array[i])) {
      results.push(array[i]);
    }
  }

  return results;
};
// Select the schools with names that have an 'r' in them:
var schools = ["Berkeley", "Notre Dame", "Chicago", "Stanford", "Tulane"];

select(schools, 'r')