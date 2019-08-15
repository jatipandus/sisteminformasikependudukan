<?php
if (empty($_SESSION['username'])){
    header('location:../index.php');
} else {
    include "../conn.php";
}
 $islam = $conn->query("SELECT * FROM data_penduduk WHERE ket = 'hidup' and asal !='pergi' and agama = 'islam'");
 $totalislam = mysqli_num_rows($islam) ;

$kristen = $conn->query("SELECT * FROM data_penduduk WHERE ket = 'hidup' and asal !='pergi' and agama = 'protestan'");
 $totalkristen = mysqli_num_rows($kristen) ; 

$katolik = $conn->query("SELECT * FROM data_penduduk WHERE ket = 'hidup' and asal !='pergi' and agama = 'katolik'");
 $totalkatolik = mysqli_num_rows($katolik) ;

$hindu = $conn->query("SELECT * FROM data_penduduk WHERE ket = 'hidup' and asal !='pergi' and agama = 'hindu'");
 $totalhindu = mysqli_num_rows($hindu) ;

$budha = $conn->query("SELECT * FROM data_penduduk WHERE ket = 'hidup' and asal !='pergi' and agama = 'budha'");
 $totalbudha = mysqli_num_rows($budha) ;

 $konghuchu = $conn->query("SELECT * FROM data_penduduk WHERE ket = 'hidup' and asal !='pergi' and agama = 'konghuchu'");
 $totalkonghuchu = mysqli_num_rows($konghuchu) ;

$lainnya = $conn->query("SELECT * FROM data_penduduk WHERE ket = 'hidup' and asal !='pergi' and agama != 'budha' and agama != 'katolik' and agama != 'protestan' and agama != 'islam' and agama != 'konghuchu' and agama != 'hindu' ");
 $totallainnya = mysqli_num_rows($lainnya) ;

$dataPointsAgama = array(
  array("label"=> "Islam", "y"=> $totalislam),
  array("label"=> "Protestan", "y"=> $totalkristen),
  array("label"=> "Katolik", "y"=> $totalkatolik),
  array("label"=> "Hindu", "y"=> $totalhindu),
  array("label"=> "Budha", "y"=> $totalbudha),
  array("label"=> "Konghuchu", "y"=> $totalkonghuchu),
  array("label"=> "Lainnya", "y"=> $totallainnya)
);
 
?>
<!DOCTYPE HTML>
<html>
<head>
<script>
window.onload = function() {
var grafagama = new CanvasJS.Chart(document.getElementById('grafagama'), {
  animationEnabled: true,
  
  data: [{
    type: "pie",
    startAngle: 25,
    showInLegend: "true",
    toolTipContent: "<b>{label}</b>: {y}%",  
    legendText: "{label}",
    indexLabelFontSize: 12,
    indexLabel: "{label} - #percent%",
    dataPoints: <?php echo json_encode($dataPointsAgama, JSON_NUMERIC_CHECK); ?>
  }]
});
grafagama.render();
 
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

<div id="grafagama" style="height: 270px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<table>
  <tr>
    <th><center>Agama</center></th>
    <th><center>Detail Data</center></th>
  </tr>

  <tr>
    <td><center>Islam</center></td>
    <td><center> <a href="islam.php"><?php echo "$totalislam"; ?></a></center></td>
  </tr>
  
  <tr>
    <td><center>Protestan</center></td>
    <td><center> <a href="kristen.php"><?php echo "$totalkristen"; ?></a></center></td>
  </tr>

  <tr>
    <td><center>Katolik</center></td>
    <td><center> <a href="katolik.php"><?php echo "$totalkatolik"; ?></a></center></td>
  </tr>

  <tr>
    <td><center>Hindu</center></td>
    <td><center> <a href="hindu.php"><?php echo "$totalhindu"; ?></a></center></td>
  </tr>

  <tr>
    <td><center>Budha</center></td>
    <td><center> <a href="budha.php"><?php echo "$totalbudha"; ?></a></center></td>
  </tr>

  <tr>
    <td><center>Konghuchu</center></td>
    <td><center> <a href="konghuchu.php"><?php echo "$totalkonghuchu"; ?></a></center></td>
  </tr>

  <tr>
    <td><center>Lainnya*</center></td>
    <td><center> <a href="lainnya.php"><?php echo "$totallainnya"; ?></a></center></td>
  </tr>
</table>
*Lainnya : Atheis, Dan Lain-Lain
</body>
</html>