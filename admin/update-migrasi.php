<?php
session_start();
$namafolder="gambar_pelanggan/"; //tempat menyimpan file

include "../conn.php";

  $id_migrasi = $_POST['id_migrasi'];
  $nik=$_POST['nik'];
  $nama=$_POST['nama'];
  $tempat_lahir=$_POST['tempat_lahir'];
  $tanggal_lahir=$_POST['tanggal_lahir'];
  $jk=$_POST['jk'];
  $agama=$_POST['agama'];
  $pekerjaan=$_POST['pekerjaan'];
  $kewarganegaraan=$_POST['kewarganegaraan'];
  $status=$_POST['status'];
  $tgl_masuk = $_POST['tgl_masuk'];


  $rtrw_asal = $_POST['rtrw_asal'];
  $desa_asal = $_POST['desa_asal'];
  $kecamatan_asal = $_POST['kecamatan_asal'];
  $kabupaten_asal = $_POST['kabupaten_asal'];
  $provinsi_asal = $_POST['provinsi_asal'];
//$kodepos_asal = $_POST['kodepos_asal'];
//$provinsi_asal = $_POST['provinsi_asal'];

  $rtrw_domisili = $_POST['rtrw_domisili'];
  $desa_domisili = $_POST['desa_domisili'];
  $kecamatan_domisili = $_POST['kecamatan_domisili'];
  $kabupaten_domisili = $_POST['kabupaten_domisili'];
  $provinsi_domisili = $_POST['provinsi_domisili'];
  //$kodepos_domisili = $_POST['kodepos_domisili'];
  //$provinsi_domisili = $_POST['provinsi_domisili'];
    $admin=$_SESSION['username'];
  $tgl_edit=date('Y-m-d');
 $tgl=date("Y-m-d H:i:s");

  $sql2=$conn->query("UPDATE data_migrasi set id_migrasi='$id_migrasi', nik='$nik', nama='$nama',
    tempat_lahir='$tempat_lahir', agama='$agama', jk='$jk', status='$status', pekerjaan='$pekerjaan',
    kewarganegaraan='$kewarganegaraan', tanggal_lahir='$tanggal_lahir',
    rtrw_asal='$rtrw_asal', desa_asal='$desa_asal', kecamatan_asal='$kecamatan_asal',
    kabupaten_domisili='$kabupaten_asal',provinsi_domisili='$provinsi_asal', tgl_masuk='$tgl_masuk', rtrw_domisili='$rtrw_domisili',
    desa_domisili='$desa_domisili', kecamatan_domisili='$kecamatan_domisili', kabupaten_domisili='$kabupaten_domisili',provinsi_domisili='$provinsi_domisili',
    tgl_edit='$tgl_edit',admin='$admin' where id_migrasi='$id_migrasi'");

 
  if ($sql2){
     $log=$conn->query("INSERT into log_aktivitas VALUES('','Edit Migrasi','$tgl','$admin')");
 echo"
  <!DOCTYPE html>
<html>
<head>
 <meta charset='utf-8'>
  <meta name='viewport' content='width=device-width, initial-scale=1'>
   <title>Menampilkan Modal Bootstrap | AmazingLight</title>

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
          <h4 class='modal-title'>Data Update Migrasi</h4>
        </div>
        <div class='modal-body'>
          <p>Data berhasil di masukan</p>
        </div>
        <div class='modal-footer'>

           <a class='btn btn-sm btn-primary' data-placement='bottom' data-toggle='tooltip'  href='detail-migrasi.php?hal=edit&kd=$nik'>Ok</a>
              
          <a class='btn btn-sm btn-primary' data-placement='bottom' data-toggle='tooltip' target='_blank' href='suratmigrasi.php?hal=edit&kd=$nik'><span class='glyphicon glyphicon-print'></span></a><br>
                    
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
</html>
    ";
  } else {
    echo "gagal".$conn->error;
      }

?>
