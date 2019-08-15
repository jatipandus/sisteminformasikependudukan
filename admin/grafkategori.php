<?php
if (empty($_SESSION['username'])){
    header('location:../index.php');
} else {
    include "../conn.php";
}
 $balita = $conn->query("SELECT * FROM data_penduduk WHERE YEAR(curdate()) - YEAR(tgl_lahir) <= '5' and ket = 'hidup' and asal != 'pergi' ");
 $totalbalita = mysqli_num_rows($balita) ;

$kanak = $conn->query("SELECT * FROM data_penduduk WHERE YEAR(curdate()) - YEAR(tgl_lahir) >= '6' and YEAR(curdate()) - YEAR(tgl_lahir) <= '11' and ket = 'hidup' and asal != 'pergi'");
 $totalkanak = mysqli_num_rows($kanak) ;

$remaja = $conn->query("SELECT * FROM data_penduduk WHERE YEAR(curdate()) - YEAR(tgl_lahir) >= '12' and YEAR(curdate()) - YEAR(tgl_lahir) <= '25' and ket = 'hidup' and asal != 'pergi'");
 $totalremaja = mysqli_num_rows($remaja) ;

$dewasa = $conn->query("SELECT * FROM data_penduduk WHERE YEAR(curdate()) - YEAR(tgl_lahir) >= '26' and YEAR(curdate()) - YEAR(tgl_lahir) <= '45' and ket = 'hidup' and asal != 'pergi'");
 $totaldewasa = mysqli_num_rows($dewasa) ;

$lansia = $conn->query("SELECT * FROM data_penduduk WHERE YEAR(curdate()) - YEAR(tgl_lahir) >= '46' and YEAR(curdate()) - YEAR(tgl_lahir) <= '65' and ket = 'hidup' and asal != 'pergi'");
 $totallansia = mysqli_num_rows($lansia) ;

$manula = $conn->query("SELECT * FROM data_penduduk WHERE YEAR(curdate()) - YEAR(tgl_lahir) >= '66' and ket = 'hidup' and asal != 'pergi' ");
 $totalmanula = mysqli_num_rows($manula) ;

$dataPointsKategori = array(
  array("label"=> "Balita", "y"=> $totalbalita),
  array("label"=> "Kanak-Kanak", "y"=> $totalkanak),
  array("label"=> "Remaja", "y"=> $totalremaja),
  array("label"=> "Dewasa", "y"=> $totaldewasa),
  array("label"=> "Lansia", "y"=> $totallansia),
  array("label"=> "Manula", "y"=> $totalmanula)
);
 
?>
<!DOCTYPE HTML>
<html>
<head>
<script>
window.onload = function() {
 
 
var grafkategori = new CanvasJS.Chart(document.getElementById('grafkategori'), {
  animationEnabled: true,  
  data: [{
    type: "pie",
    startAngle: 25,
    showInLegend: "true",
    toolTipContent: "<b>{label}</b>: {y}%",  
    legendText: "{label}",
    indexLabelFontSize: 12,
    indexLabel: "{label} - #percent%",
    dataPoints: <?php echo json_encode($dataPointsKategori, JSON_NUMERIC_CHECK); ?>
  }]
});
grafkategori.render();
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

<div id="grafkategori" style="height: 270px; width: 100%;"></div>
<table>
  <tr>
    <th><center>Keterangan</center></th>
    <th><center>Rentang Umur</center></th>
    <th><center>Detail Data</center></th>
  </tr>

  <tr>
    <td><center>Balita</center></td>
    <td><center>0 - 5 Tahun </center></td>      
    <td><center> <a href="balita.php"><?php echo "$totalbalita"; ?></a></center></td>
  </tr>
  <tr>
    <td><center>Kanak - Kanak </center></td>
    <td><center>6 - 11 Tahun </center></td>
    <td><center> <a href="kanak.php"><?php echo "$totalkanak"; ?></a></center></td>
  </tr>

  <tr>
    <td><center> Remaja </center></td>
    <td><center> 12 - 25 Tahun </center></td>
    <td><center> <a href="remaja.php"><?php echo "$totalremaja"; ?></a></center></td>
  </tr>

  <tr>
    <td><center> Dewasa </center></td>
    <td><center> 26 - 45 Tahun </center></td>
    <td><center> <a href="dewasa.php"><?php echo "$totaldewasa"; ?></a></center></td>
  </tr>

  <tr>
    <td><center> Lansia </center></td>
    <td><center> 46 - 65 Tahun </center></td>
    <td><center> <a href="lansia.php"><?php echo "$totallansia"; ?></a></center></td>
  </tr>

  <tr>
    <td><center> Manula </center></td>
    <td><center> Lebih Dari 66 Tahun </center></td>
    <td><center> <a href="manula.php"><?php echo "$totalmanula"; ?></a> </center></td>
  </tr>
</table>
</body>
</html>