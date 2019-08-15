<?php
session_start();
$namafolder="gambar_pelanggan/"; //tempat menyimpan file

include "../conn.php";

  $id_mutasi = $_POST['id_mutasi'];
  $nik=$_POST['nik'];
  $nama=$_POST['nama'];
  $tempat_lahir=$_POST['tempat_lahir'];
  $tanggal_lahir=$_POST['tanggal_lahir'];
  $jk=$_POST['jk'];
  $agama=$_POST['agama'];
  $pekerjaan=$_POST['pekerjaan'];
  $kewarganegaraan=$_POST['kewarganegaraan'];
  $status=$_POST['status'];
  $tanggal_keluar = $_POST['tanggal_keluar'];


  $rtrw_mutasi = $_POST['rtrw_mutasi'];
  $desa_mutasi = $_POST['desa_mutasi'];
  $kecamatan_mutasi = $_POST['kecamatan_mutasi'];
  $kabupaten_mutasi = $_POST['kabupaten_mutasi'];
  $provinsi_mutasi = $_POST['provinsi_mutasi'];


  $rtrw_domisili = $_POST['rtrw_domisili'];
  $desa_domisili = $_POST['desa_domisili'];
  $kecamatan_domisili = $_POST['kecamatan_domisili'];
  $kabupaten_domisili = $_POST['kabupaten_domisili'];
  $provinsi_domisili = $_POST['provinsi_domisili'];

  $admin=$_SESSION['username'];
  $tgl_create=date('Y-m-d');
  $tgl_edit=date('Y-m-d');
  $tgl=date("Y-m-d H:i:s");

   $result = $conn->query("SELECT * from data_penduduk WHERE nik='$nik'");
  $row = mysqli_fetch_array ($result);

 $result2 = $conn->query("SELECT * from data_mutasi WHERE nik='$nik'");
  $row2 = mysqli_fetch_array ($result2);

  if (mysqli_num_rows($result) < 1){
     echo "<script>alert('Nik tidak terdaftar di penduduk !!'); window.location = 'datamutasi.php'</script>";
  }
  else if (mysqli_num_rows($result2)>=1) {
    echo "<script>alert('Data Sudah Termutasi !!'); window.location = 'datamutasi.php'</script>";
      }
  else{


  $sql2=$conn->query("INSERT INTO data_mutasi
   VALUES('$id_mutasi','$nik','$nama','$tempat_lahir','$agama','$jk','$status','$pekerjaan','$kewarganegaraan','$tanggal_lahir',
    '$rtrw_mutasi','$desa_mutasi','$kecamatan_mutasi','$kabupaten_mutasi','$provinsi_mutasi','$tanggal_keluar','$rtrw_domisili','$desa_domisili',
    '$kecamatan_domisili','$kabupaten_domisili','$provinsi_domisili','$tgl_create','','$admin')");

 
  if ($sql2){
  $mutasi=$conn->query("UPDATE data_penduduk set asal='pergi' ,tgl_edit='$tgl_edit',admin='$admin',tgl_edit='$tgl_edit',admin='$admin' where nik='$nik'");  
  $log=$conn->query("INSERT into log_aktivitas VALUES('','update anggota KK','$tgl','$admin')");
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
          <h4 class='modal-title'>Data Mutasi</h4>
        </div>
        <div class='modal-body'>
          <p>Data berhasil di masukan</p>
        </div>
        <div class='modal-footer'>

           <a class='btn btn-sm btn-primary' data-placement='bottom' data-toggle='tooltip'  href='datamutasi.php'>Ok</a>
              
          <a class='btn btn-sm btn-primary' data-placement='bottom' data-toggle='tooltip' target='_blank' href='suratmutasi.php?hal=edit&kd=$nik'><span class='glyphicon glyphicon-print'></span></a><br>
                    
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
}
?>
