var colors = ['white', 'black', 'brown', 'grey'];
var names = ['Lucky', 'Speedy', 'Felfel', 'Cooper'];

colors.push('silver');
names.push('Ed');

var horses = {};
for (var i = 0; i < colors.length; i++) {
horses[names[i]] = colors[i];
}

console.log (horses);