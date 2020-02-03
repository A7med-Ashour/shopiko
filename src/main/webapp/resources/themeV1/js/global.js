/* $$$$$$$ START GENERIC SECTION $$$$$$$ */

function hideCurrentAttribute(attributeName){
	this.setAttribute(attributeName + "_hidden",this.getAttribute(attributeName));
	this.removeAttribute(attributeName);
}

function showHiddenAttribute(attributeName){
	
	this.setAttribute(attributeName,this.getAttribute(attributeName + "_hidden"));
	this.removeAttribute(attributeName + "_hidden");
	
}

/* $$$$$$$ END GENERIC SECTION $$$$$$$ */

/* $$$$$$$ START INPUT FIELDS GLOBAL SECTION $$$$$$$ */


var allInputFields = document.querySelectorAll("input");

/* ATTACH EVENTS TO FIELDS */

allInputFields.forEach(f => {
	f.addEventListener("focus", hideCurrentAttribute.bind(f,"placeholder"));
	f.addEventListener("blur", showHiddenAttribute.bind(f,"placeholder"));
} );

 
/* $$$$$$$ END INPUT FIELDS GLOBAL SECTION $$$$$$$ */