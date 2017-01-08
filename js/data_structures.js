var horses = ["Matt", "Derrick", "Gunner", "Sarge"];
var colors = ["blue", "yellow", "green", "pink"];

horses.push("Max");
colors.push("white");
console.log(horses);

var horseAndColor = {}

for (var i = 0; i < horses.length; i++) {
  (horseAndColor[horses[i]]=colors[i]);
}

console.log(horseAndColor)


function Car(make, model, condition) {
 this.make = make;
 this.model = model;
 this.condition = condition;
 this.drive = function() { console.log("*drives*"); };
 if (this.condition == "used") {
  console.log("old")
 }
}

mattsCar = new Car("Volkswagen", "e-Golf", "new");

console.log(mattsCar)