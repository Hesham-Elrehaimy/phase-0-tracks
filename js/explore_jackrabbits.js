// - create a new string 
// - go through the letters in the word 
// - add the letters from last to first to the new string
// - return the new string

function reverse(string){
	var newString = "";
	for (i = 1; i <= string.length; i++){
		newString += string[string.length - i];
	}
	return newString;
}

var reversedWord = reverse("Go Cubs!");

if (1 == 1) {
	console.log(reversedWord);
}