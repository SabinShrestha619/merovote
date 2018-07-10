$(document).ready(function () {

	var ctx = $("#bar-chartcanvas");
	var data1=document.getElementById("data1").value;
	var data2=document.getElementById("data2").value;
	var data3=document.getElementById("data3").value;
	var data4=document.getElementById("data4").value;
	var data5=document.getElementById("data5").value;

	var data = {
		labels : ["Nepali Congress", "CPN UML", "Bibeksheel", "Naya Shakti", "Forum Nepal"],
		datasets : [
			{
				label : "TeamA score",
				data : [data1, data2, data3, data4, data5],
				backgroundColor : [
					"red",
					"yellow",
					"blue",
					"green",
					"orange"
				],
				borderColor : [
					"#111",
					"#111",
					"#111",
					"#111",
					"#111"
				],
				borderWidth : 1
			}
		]
	};

	var options = {
		title : {
			display : true,
			position : "top",
			text : "Election Result Bar Graph",
			fontSize : 18,
			fontColor : "#111"
		},
		legend : {
			display : false
		},
		scales : {
			yAxes : [{
				ticks : {
					min : 0
				}
			}]
		}
	};

	var chart = new Chart( ctx, {
		type : "bar",
		data : data,
		options : options
	});

});