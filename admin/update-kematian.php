<?php
session_start();
include "../conn.php";

  $id = $_POST['id_kematian'];
  $nik = $_POST['nik_pelapor'];
  $nama = $_POST['nama_pelapor'];
  $tanggal_kematian = $_POST['tgl_mati'];
  $tempat = $_POST['tmpt_makam'];
  $nik_pelapor = $_POST['nik_pelapor'];
  $hub_pelapor = $_POST['hubungan_pelapor'];
  //$nik_penduduk=['nik'];
  $admin=$_SESSION['username'];
  $tgl_edit=date('Y-m-d');
  $tgl=date("Y-m-d H:i:s");

  $sql=$conn->query("UPDATE data_kematian SET id_kematian='$id', tgl_mati='$tanggal_kematian',
   tmpt_makam='$tempat', nama_pelapor='$nama', nik_pelapor='$nik_pelapor', hubungan_pelapor='$hub_pelapor', tgl_edit='$tgl_edit',admin='$admin' WHERE id_kematian='$id'");

  if ($sql){
     $log=$conn->query("INSERT into log_aktivitas VALUES('','Edit kematian','$tgl','$admin')");
  echo" 
  <!DOCTYPE html>
<html>
<head>
 <meta charset='utf-8'>
  <meta name='viewport' content='width=device-width, initial-scale=1'>
   <title></title>

   <link href='../css/bootstrap.min.css' rel='stylesheet'>
  
</head>

<body>

<div class='container'>

  
  <!-- Modal -->
  <div class='modal fade' id='myModal' role='dialog'>
    <div class='modal-dialog modal-sm'>
      <div class='modal-content'>
        <div class='modal-header'>
          <button type='button' class='close' data-dismiss='modal'>&times;</button>
          <h4 class='modal-title'>Data Update Kematian</h4>
        </div>
        <div class='modal-body'>
          <p>Data berhasil di masukan</p>
        </div>
        <div class='modal-footer'>

           <a class='btn btn-sm btn-primary' data-placement='bottom' data-toggle='tooltip'  href='datakematian.php'>Ok</a>
              
          <a class='btn btn-sm btn-primary' data-placement='bottom' data-toggle='tooltip' target='_blank' href='suratkematian.php?hal=edit&kd=$id'><span class='glyphicon glyphicon-print'></span></a><br>
                    
        </div>
      </div>
    </div>
  </div>
</div>

<script src='../js/jquery.min.js'></script>
<script src='../js/bootstrap.min.js'></script>
<script type='text/javascript'>
   $('#myModal').modal('show');

</script>
</body>
</html> ";
  } else {
  	echo "gagal".$conn->error;;
      }

?>
