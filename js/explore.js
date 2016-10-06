//declare the function
    //give it a parameter (a word)
    //turn the into an array seperating the letters.
    //reverse the array
    // put the letters back together again
// return the word after being reversed    

function reverse(word) {
	return word.split('').reverse().join('');
}

console.log (reverse('hesham'));

var reversedWord = reverse('hello');

if (1 == 1) {

	console.log(reversedWord);
}

