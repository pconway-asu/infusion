<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<meta name="layout" content="main">
    <title>Radar Chart</title>    
     <script type="text/javascript" src="${resource(dir: 'js', file: 'Chart.js')}"></script>
    
    <style>
        canvas{
        }
    </style>
</head>
<body>
<div class="row-fluid">
    <canvas id="canvas" height="900" width="900"></canvas>

    <script>

        var radarChartData = {
            labels : ["Strategy & Metrics","Compliance & Policy","Training","Code Review","Attack Models","Security Design","Pen. Testing","Sec. Testing","Arch. Analysis","Sw. Env.","Config/Vuln. Mgmt","Standards/Reqs."],
            datasets : [
            {
                label: "Infusionsoft",
                fillColor : "rgba(220,220,220,0.25)",
                strokeColor : "rgba(220,220,220,1)",
                pointColor : "rgba(220,220,220,1)",
                pointStrokeColor : "#fff",
                data : [3,2,2,3,2,3,2,3,2,2,3,1]
            },
            {
                label: "BSIMM",
                fillColor : "rgba(151,187,205,0.25)",
                strokeColor : "rgba(151,187,205,1)",
                pointColor : "rgba(151,187,205,1)",
                pointStrokeColor : "#fff",
                data : [2,3,3,3,2,3,0,3,2,3,3,2]
            }
            ]

        }

var myRadar = new Chart(document.getElementById("canvas").getContext("2d")).Radar(radarChartData,{scaleShowLabels : true, pointLabelFontSize : 15});

</script>
</div>
</body>
</html>