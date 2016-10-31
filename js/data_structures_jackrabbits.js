var colors = ['white', 'black', 'brown', 'grey'];
var names = ['Lucky', 'Speedy', 'Felfel', 'Cooper'];

colors.push('silver');
names.push('Ed');

var horses = {};
for (var i = 0; i < colors.length; i++) {
horses[names[i]] = colors[i];
}


function Car(brand, year, automatic) {
	this.brand = brand;
	this.year = year;
	this.automatic = automatic;
	this.honk = function() {console.log("beep beep!");};
}

toyota = new Car('Camry', 2006, true)
console.log(toyota.brand)
console.log(toyota.year)
console.log(toyota.automatic)
toyota.honk();

console.log('---------');

hyundai = new Car('Verna', 2009, false);
console.log(hyundai.brand)
console.log(hyundai.year)
console.log(hyundai.automatic)
hyundai.honk();

console.log('---------');

nissan = new Car('Sunny', 2011, true);
console.log(nissan.brand)
console.log(nissan.year)
console.log(nissan.automatic)
nissan.honk();