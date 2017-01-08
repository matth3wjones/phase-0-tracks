var names = ["Matt", "Derrick", "Gunner", "Sarge"]
var colors = ["blue", "yellow", "green", "pink"]

names.push("Max");
colors.push("white");
//console.log(names);

var horses = {}

for (var i = 0; i < names.length; i++) {
  horses[names[i]] = colors[i];
}

//console.log(horses)


function Car(make, model, status) {
  this.make = make;
  this.model = model;
  this.status = status;
  this.drive = function() { console.log("drives"); };
  console.log("FOR SALE", make, model);
};

var mattsCar = new Car("Volkswagen", "e-Golf", "sell");
var derricksCar = new Car("Volkswagen", "Touareg", "keep");

// console.log(mattsCar);
mattsCar.drive();
console.log(derricksCar.status);