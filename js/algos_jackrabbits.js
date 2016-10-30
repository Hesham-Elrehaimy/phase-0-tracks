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

//Input: two objects
//declare a variable with a false value
//iterate through the first objects
//compare value generated from each key in the first object with those of the second object
// change the value of the declared variable to true if values match
// return the value of the variable
//Output: a boolean indicating if the two arrays have a common key/value pair.

function common(obj1,obj2) {

	var similar = false;
	for (var key in obj1) {
		if (obj1[key] == obj2[key]) {
			similar = true;
		}		
	}
	return similar;
}

//Input: an integer

// create a function which creates a random string (minimum 1 letter and maximum 10 letters)
  // Iterates through the alphabet
  // assign the letters to an empty array
  // join the elements of the array together and turn it to a string
// create a funtion which stores the random strings in an array
  //Use a loop to assign the outcome of the string function into an array
  //return the array

//Output: an array which contains as many strings as the integer given.

function string() {

var alpha = 'abcdefghijklmnopqrstuvwxyz';

var randomWord = [];


for (var i = 0; i < Math.floor((Math.random() * 10) + 1); i++) {
	
	randomWord[i] = alpha[Math.floor((Math.random() * 26))];
}
	return randomWord.join('').toString();
}

function randomArray(integer) {
	wordsArray = [];
	for (var i = 0; i < integer; i++) {
		
		wordsArray[i] = string();
	}
return wordsArray;
}

//release 0 driver code
console.log(longestString(['Chicago', 'San Francisco', 'New York', 'Austin', 'Washington D.C.'])); //should print 'Washington D.C.'

console.log(longestString(['Marlon Brando', 'Al Pacino', 'James Caan', 'Robert Duvall', 'Diane Keaton'])); //should print 'Marlon Brando' 

console.log(longestString(['Soccer', 'Football', 'Basketball', 'Squash', 'tennis'])); //should print 'Basketball'

//release 1 driver code
console.log(common({name:"Hesham", age:31}, {name:"Moamen", age:31})); //should print 'true', but keeps returning false

console.log(common({name:"Hesham", age:31}, {name:"Hesham", age:19})); //should print 'true'

console.log(common({name:"Hesham", age:31}, {name:"Moamen", years:31})); //should print 'false'

console.log(common({name:"Hesham", education:"Business", interest:"Soccer"}, {name:"Moamen", education:"Pharmacy", interest:"Classical Piano"})); //should print 'false'

//release 2 driver code
for (i = 0; i < 10; i++) {

    randomWordsArray = randomArray(7)
    console.log(randomWordsArray);
	console.log(longestString(randomWordsArray));
}





