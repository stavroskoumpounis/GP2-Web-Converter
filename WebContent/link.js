/**
 * The following JavaScript function utilises a jQuery and AJAX request to connect to your servlet through the HTML form input
 */
$(document).ready(function () {

	$("#jsp_submitbutton").click(function () {
		var dataArray = $("#jsp_userinputform").serializeArray(),
			dataObj = {}
		

		$(dataArray).each(function (i, field) {
			dataObj[field.name] = field.value;
		});

			$('#jsp_userinputform').on('submit', function (e) {
				$.post('http://localhost:8080/0Encryption/GP2let', 
					{
						bindecIn: dataObj['jsp_bindecnum'],
						binhexaIn: dataObj['jsp_binhexanum']
						
					},
					function (servdata, status) {
						
						var array= servdata.split("|",2);
						var decimalout= array[1];
						var hexaout= array[0];
					
						$("#BindecResponse").text(decimalout);
						$("#BinhexaResponse").text(hexaout);
					    $("#a").text(dataObj['jsp_bindecnum']+" in decimal is");
					    $("#b").text(dataObj['jsp_binhexanum']+" in hexadecimal is");


					}).error(function () {
					// This is executed when the call to post failed
				});
				e.preventDefault();
		});
	});
});