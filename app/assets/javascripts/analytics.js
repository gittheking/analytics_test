// $(document).ready(function(){

	var cohort = $('.cohort_statistics').data('cohort');
	// Grabbing array of student objects from analytics controller
	var students = $('.cohort_statistics').data('students');
	// Grabbing days 
	var daysGraduated = $('.cohort_statistics').data('days');

	var employmentStats = $('.cohort_statistics').data('grad');

	// Overall percentage of students currently employed
	var employedTotal = Math.floor((employmentStats.length / students.length) * 100);

	//Establishing charts
	var $ctxP = $('#myPieChart').get(0).getContext('2d');
	var myNewChartP = new Chart($ctxP);

	var $ctxL = $('#myLineChart').get(0).getContext('2d');
	var myNewChartL = new Chart($ctxL);


	Chart.defaults.global = {
    // Boolean - Whether to animate the chart
    animation: true,

    // Number - Number of animation steps
    animationSteps: 30,

    // String - Animation easing effect
    // Possible effects are:
    // [easeInOutQuart, linear, easeOutBounce, easeInBack, easeInOutQuad,
    //  easeOutQuart, easeOutQuad, easeInOutBounce, easeOutSine, easeInOutCubic,
    //  easeInExpo, easeInOutBack, easeInCirc, easeInOutElastic, easeOutBack,
    //  easeInQuad, easeInOutExpo, easeInQuart, easeOutQuint, easeInOutCirc,
    //  easeInSine, easeOutExpo, easeOutCirc, easeOutCubic, easeInQuint,
    //  easeInElastic, easeInOutSine, easeInOutQuint, easeInBounce,
    //  easeOutElastic, easeInCubic]
    animationEasing: "easeInOutSine",

    // Boolean - If we should show the scale at all
    showScale: true,

    // Boolean - If we want to override with a hard coded scale
    scaleOverride: false,

    // ** Required if scaleOverride is true **
    // Number - The number of steps in a hard coded scale
    scaleSteps: null,
    // Number - The value jump in the hard coded scale
    scaleStepWidth: null,
    // Number - The scale starting value
    scaleStartValue: null,

    // String - Colour of the scale line
    scaleLineColor: "rgba(0,0,0,.1)",

    // Number - Pixel width of the scale line
    scaleLineWidth: 1,

    // Boolean - Whether to show labels on the scale
    scaleShowLabels: true,

    // Interpolated JS string - can access value
    scaleLabel: "<%=value%>",

    // Boolean - Whether the scale should stick to integers, not floats even if drawing space is there
    scaleIntegersOnly: true,

    // Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
    scaleBeginAtZero: false,

    // String - Scale label font declaration for the scale label
    scaleFontFamily: "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",

    // Number - Scale label font size in pixels
    scaleFontSize: 12,

    // String - Scale label font weight style
    scaleFontStyle: "normal",

    // String - Scale label font colour
    scaleFontColor: "#666",

    // Boolean - whether or not the chart should be responsive and resize when the browser does.
    responsive: false,

    // Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
    maintainAspectRatio: true,

    // Boolean - Determines whether to draw tooltips on the canvas or not
    showTooltips: true,

    // Function - Determines whether to execute the customTooltips function instead of drawing the built in tooltips (See [Advanced - External Tooltips](#advanced-usage-custom-tooltips))
    customTooltips: false,

    // Array - Array of string names to attach tooltip events
    tooltipEvents: ["mousemove", "touchstart", "touchmove"],

    // String - Tooltip background colour
    tooltipFillColor: "rgba(0,0,0,0.8)",

    // String - Tooltip label font declaration for the scale label
    tooltipFontFamily: "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",

    // Number - Tooltip label font size in pixels
    tooltipFontSize: 14,

    // String - Tooltip font weight style
    tooltipFontStyle: "normal",

    // String - Tooltip label font colour
    tooltipFontColor: "#fff",

    // String - Tooltip title font declaration for the scale label
    tooltipTitleFontFamily: "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",

    // Number - Tooltip title font size in pixels
    tooltipTitleFontSize: 14,

    // String - Tooltip title font weight style
    tooltipTitleFontStyle: "bold",

    // String - Tooltip title font colour
    tooltipTitleFontColor: "#fff",

    // Number - pixel width of padding around tooltip text
    tooltipYPadding: 6,

    // Number - pixel width of padding around tooltip text
    tooltipXPadding: 6,

    // Number - Size of the caret on the tooltip
    tooltipCaretSize: 8,

    // Number - Pixel radius of the tooltip border
    tooltipCornerRadius: 6,

    // Number - Pixel offset from point x to tooltip edge
    tooltipXOffset: 10,

    // String - Template string for single tooltips
    tooltipTemplate: "<%if (label){%><%=label%>: <%}%><%= value %>",

    // String - Template string for multiple tooltips
    multiTooltipTemplate: "<%= value %>",

    // Function - Will fire on animation progression.
    onAnimationProgress: function(){},

    // Function - Will fire on animation completion.
    onAnimationComplete: function(){}
}


	// Employment pie chart data
	var pieData = [
	{
		value: employedTotal,
		label: 'Employed',
		color: '#f0553a'
	},
	{
		value: 100 - employedTotal,
		label: 'Unemployed',
		color: '#fedd91'
	}
	]

	// This variable can be used to dynamically change the 
	// The dataset over days
	var xAxisDays = 90;

	if (daysGraduated > xAxisDays){
		var xValues = xAxisDays/10;
	} else {
		var xValues = Math.floor(daysGraduated/10);
	}

	// setting array of x-axis values 
	var xAxis = [0];
	for(var i = 1; i <= xValues; i++){
		xAxis.push(i*10);
	}

	// Filling studentEmployment array with 0's
	var studentEmployment = [];
	for(var i = 0; i < xAxis.length; i++){
		studentEmployment.push(0);
	}

	// Filling studentEmployment array with percentage of employed students over time
	for(var i = 1; i < xAxis.length; i++){
		for(var j = 0; j < employmentStats.length; j++){
			if(employmentStats[j] <= xAxis[i]){
				studentEmployment[i]++;
			}
		}
		studentEmployment[i] = Math.floor((studentEmployment[i] / students.length) * 100 );
		xAxis[i] = xAxis[i] + " Days"
	}

	var lineData = {
		labels: xAxis,
		datasets: [
			{
				label: "Employment over Time",
				fillColor: "#ffffff",
        strokeColor: "#f0553a",
        pointColor: "rgba(220,220,220,1)",
        pointStrokeColor: "#fff",
        pointHighlightFill: "#fff",
        pointHighlightStroke: "rgba(220,220,220,1)",
        data: studentEmployment
			}
		]
	}

	var optionsL = {
		scaleShowGridLines : false,
		datasetStrokeWidth : 5,
		datasetFill : false
	}


	// // Creating Pie Chart
	var myPieChart = new Chart($ctxP).Doughnut(pieData);
	var myLineChart = new Chart($ctxL).Line(lineData, optionsL);

	$(document).ready(function(){
		var percent = 0;
		timeoutID = window.setInterval(function(){
			if(percent <= employedTotal){
				$('.percent').text(percent + "%")
				percent++
			} else {
				clearInterval(timeoutID);
			}
		},5);
	})
