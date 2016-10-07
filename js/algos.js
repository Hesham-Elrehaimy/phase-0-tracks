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

//iterate through both objects
//have the function return true if the key and the value both match in both objects


function common(obj1,obj2) {

	for (var prop1 in obj1) {
	
	
		for (var prop2 in obj2) {
		
			if ((prop1 == prop2)  && (obj1[prop1] == obj2[prop2])) {

			   return true;
	        }

	 
		    else {
		
	            return false;
	        }
	    }
	
    }
	

}

// Write a function that: 
     // takes an integer for length,
     // builds and returns an array of strings of the given length.
// So if we ran your function with an argument of 3, we would get an array of 3 random words back
// (the words don't have to be actual sensical English words -- "nnnnfph" totally counts).
// The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters.
// (This involves a new trick, generating a random number, that you'll have to look up, 
// but the solution on how to do so is relatively straightforward.)



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


console.log(longestString(['Chicago', 'San Francisco', 'New York', 'Austin', 'Washington D.C.'])); //should print 'Washington D.C.'

console.log(longestString(['Marlon Brando', 'Al Pacino', 'James Caan', 'Robert Duvall', 'Diane Keaton'])); //should print 'Marlon Brando' 

console.log(longestString(['Soccer', 'Football', 'Basketball', 'Squash', 'tennis'])); //should print 'Basketball'


console.log(common({name:"Hesham", age:31},{name:"Moamen", age:31})); //should print 'true'

console.log(common({name:"Hesham", age:31},{name:"Hesham", age:19})); //should print 'true'

console.log(common({name:"Hesham", age:31},{name:"Moamen", years:31})); //should print 'false'

console.log(common({name:"Hesham", education:"Business", interest:"Soccer"},{name:"Moamen", education:"Pharmacy", interest:"Classical Piano"})); //should print 'false'

for (i = 0; i < 10; i++) {

    randomWordsArray = randomArray(7)
    console.log(randomWordsArray);
	console.log(longestString(randomWordsArray));
}





