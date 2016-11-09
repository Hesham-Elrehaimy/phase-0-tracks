console.log("This is our page")

var heading = document.getElementById('heading');

heading.style.color = "orange";

function changeBackgroundColor(event) {
	
event.target.style.backgroundColor = "#ADD8E6";
}

var newColor = document.getElementsByTagName("body");
newColor = newColor[0];
newColor.addEventListener("click", changeBackgroundColor);