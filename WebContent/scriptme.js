function myFunction() {
	var myInputOne=document.getElementById("quantitywanted"),
	myInputTwo=document.getElementById("productprice"),
	myInputThree=document.getElementById("totalprice");
	myInputThree.value=myInputOne.value*myInputTwo.value;
}