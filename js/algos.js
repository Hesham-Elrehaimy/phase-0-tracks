//define a function which takes an array as a parameter
//create another array which contains the number of characters in every word
//find the highest number in the lengths array
//return the element in the strings array with the same index as the highest number in the numbers array


function longestString(array) {
    var otherArray = [];
    var orderedArray = [];
	for (var i = 0; i < array.length; i++) {
	otherArray.push((array[i].length));
    }

    var longestString = Math.max.apply(null, otherArray);

    return array[otherArray.indexOf(longestString)];
}




console.log(longestString(['Chicago', 'San Francisco', 'New York', 'Austin', 'Washington D.C.']));

console.log(longestString(['Marlon Brando', 'Al Pacino', 'James Caan', 'Robert Duvall', 'Diane Keaton']));

console.log(longestString(['Soccer', 'Football', 'Basketball', 'Squash', 'tennis']));