var names=["ed","tico","jim","john"];
var colors=["brown","white","black","light brown"];
names.push("bob");
colors.push("gray");
var horse={};
for (var i=0; i < names.length; i++){
  horse[names[i]]=colors[i];
}
console.log(horse);

function Car(model, year, automatic) {

	this.model = model;
	this.year = year;
	this.automatic = automatic;

	this.stop = function() {console.log('stops')};
	console.log('car initialization complete');
}

var newCar = new Car('honda', 2016, true);

newCar.stop();

console.log(newCar);
