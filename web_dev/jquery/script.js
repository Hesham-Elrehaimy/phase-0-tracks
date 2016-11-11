$(document).ready(function(){
	$("#headline").css("text-align", "center");

	$(".img").css({"height":"320px","width":"640px"});

	 $("#q1a1").click(function(){
        $("#q1a1").after("<br>Wrong answer!");
    });

	  $("#q1a2").click(function(){
        $("#q1a2").after("<br>Wrong answer!");
    });

	   $("#q1a3").click(function(){
        $("#q1a3").after("<br>Correct!");
    });

	   $("#q2a1").click(function(){
        $("#q2a1").after("<br>Wrong answer!");
    });
	   $("#q2a2").click(function(){
        $("#q2a2").after("<br>Correct!");
    });	   
	   $("#q2a3").click(function(){
        $("#q2a3").after("<br>Wrong answer!");
    });
	   $("#q3a1").click(function(){
        $("#q3a1").after("<br>Correct!");
    });
	   $("#q3a2").click(function(){
        $("#q3a2").after("<br>Wrong answer!");
    });	
	   $("#q3a3").click(function(){
        $("#q3a3").after("<br>Wrong answer!");
    });

});

