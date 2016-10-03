var names=["ed","tico","jim","john"];
var colors=["brown","white","black","light brown"];
names.push("bob");
colors.push("gray");
var horse={};
for (var i=0; i < names.length; i++){
  horse[names[i]]=colors[i];
}
console.log(horse);
