<?php
if (empty($_SESSION['username'])){
    header('location:../index.php');
} else {
    include "../conn.php";
}
 $pria = $conn->query("SELECT * FROM data_penduduk WHERE ket = 'hidup' and asal !='pergi' and jk = 'laki-laki'");
 $l = mysqli_num_rows($pria) ;
 $wanita = $conn->query("SELECT * FROM data_penduduk WHERE ket = 'hidup' and asal !='pergi' and jk = 'perempuan'" );
 $p = mysqli_num_rows($wanita) ;

$dataPointsJK = array(
  array("label"=> "Pria", "y"=> $l),
  array("label"=> "Wanita", "y"=> $p)
);
 
?>
<!DOCTYPE HTML>
<html>
<head>
<script>
window.onload = function() {
 
var grafjk = new CanvasJS.Chart(document.getElementById('grafjk'), {
  animationEnabled: true,
  
  data: [{
    type: "pie",
    startAngle: 25,
    showInLegend: "true",
    toolTipContent: "<b>{label}</b>: {y}%",  
    legendText: "{label}",
    indexLabelFontSize: 12,
    indexLabel: "{label} - #percent%",
    dataPoints: <?php echo json_encode($dataPointsJK, JSON_NUMERIC_CHECK); ?>
  }]
});
grafjk.render();
 
}
</script>
</head>
<body>
<style type="text/css">
          table {
                font-family: arial, sans-serif;
                font-size: 90%;
                border-collapse: collapse;
                width: 100%;
            }
            td, th {
                border: 1px solid #dddddd;
                padding: 1px;
                padding-left: 1px;
            }

            tr:nth-child(even) {
                background-color: #dddddd;
            }
</style>

<div id="grafjk" style="height: 270px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<table>
  <tr>
    <th colspan="2"><center>Detail Data</center></th>
  </tr>

  <tr>
    <th><center>Pria</center></th>
    <th><center>Wanita</center></th>
  </tr>

  <tr>
    <td><center> <a href="jkpria.php"><?php echo "$l"; ?></a> </center></td>
    <td><center> <a href="jkwanita.php"><?php echo "$p"; ?></a></center></td>
  </tr>
</table>
</body>
</html>