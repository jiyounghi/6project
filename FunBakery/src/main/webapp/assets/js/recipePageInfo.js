let buttonGet = document.getElementById("button-get")

buttonGet.addEventListener("click", getData);

function getData() {
	let url = "Ex01Ajax?num=1234&msg=Hello";
	
	fetch(url)
	.then((response) => response.text())
	.then((data) => {console.log(data)})
	.catch((error) => {console.log(error)});
}

/**
 * 
 */