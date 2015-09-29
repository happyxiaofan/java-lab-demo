function switchTag(LinkButton, content) {
	alert("111");
	for (i = 1; i < 5; i++) {
		if ("LinkButton" + i == LinkButton) {
			document.getElementById(LinkButton).getElementsByTagName("a")[0].className = "selectli"
					+ i;
			document.getElementById(LinkButton).getElementsByTagName("a")[0]
					.getElementsByTagName("span")[0].className = "selectspan"
					+ i;
		} else {
			document.getElementById("LinkButton" + i).getElementsByTagName("a")[0].className = "";
			document.getElementById("LinkButton" + i).getElementsByTagName("a")[0]
					.getElementsByTagName("span")[0].className = "";
		}
		if ("content" + i == content) {
			document.getElementById(content).className = "";
		} else {
			document.getElementById("content" + i).className = "hidecontent";
		}
		/*document.getElementById("div").className = div;*/
	}
}