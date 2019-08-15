<?php
session_start();

include "../conn.php";

  //$id = $_POST['id'];
  $nik = $_POST['nik'];
  $nama = $_POST['nama'];
  $tempat_lahir = $_POST['tempat_lahir'];
  $tgl_lahir = $_POST['tgl_lahir'];
  $jk= $_POST['jk'];
  $alamat = $_POST['alamat'];
  $rtrw = $_POST['rtrw'];
  $desa = $_POST['desa'];
  $kecamatan = $_POST['kecamatan'];
  $kabupatenkota = $_POST['kabupaten'];
  $provinsi = $_POST['provinsi'];
  $agama = $_POST['agama'];
  $pekerjaan = $_POST['pekerjaan'];
  $pendidikan = $_POST['pendidikan'];
  $kewarganegaraan = $_POST['kewarganegaraan'];
  $status = $_POST['status'];
  $asal = $_POST['asal'];
  $nama_ibu = $_POST['nama_ibu'];
  $pekerjaan_ibu = $_POST['pekerjaan_ibu'];
  $nama_ayah = $_POST['nama_ayah'];
  $pekerjaan_ayah = $_POST['pekerjaan_ayah'];
  $status_keluarga = $_POST['status_keluarga'];
   $no_kk=$_POST['no_kk'];
  $no_paspor=$_POST['no_paspor'];
  $no_kitaskitap=$_POST['no_kitaskitap'];
 $admin=$_SESSION['username'];
  $tgl_create=date('Y-m-d');
  $tgl=date("Y-m-d H:i:s");
 
  $result = $conn->query("SELECT * from data_penduduk WHERE nik='$nik'");
  $row = mysqli_fetch_array ($result);

  if (mysqli_num_rows($result) >= 1){
     echo "<script>alert('NIK Sudah Terdaftar !!'); window.location = 'datakelahiran.php'</script>";
  }
  else{

  $sql=$conn->query("INSERT INTO data_penduduk VALUES
                ('$nik','$nama','$tempat_lahir','$tgl_lahir','$jk','$alamat','$rtrw','$desa','$kecamatan','$kabupatenkota','$provinsi','$agama','$pekerjaan','$pendidikan','$kewarganegaraan','$status',
                  '$status_keluarga','hidup','$asal','$nama_ibu','$pekerjaan_ibu','$nama_ayah','$pekerjaan_ayah','$no_kk',
                  '$no_paspor','$no_kitaskitap','$tgl_create','','$admin')");

  if ($sql){
    $log=$conn->query("INSERT into log_aktivitas VALUES('','input data kelahiran','$tgl','$admin')");
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
          <h4 class='modal-title'>Data kelahiran</h4>
        </div>
        <div class='modal-body'>
          <p>Data berhasil di masukan</p>
        </div>
        <div class='modal-footer'>

           <a class='btn btn-sm btn-primary' data-placement='bottom' data-toggle='tooltip'  href='datakelahiran.php'>Ok</a>
              
          <a class='btn btn-sm btn-primary' data-placement='bottom' data-toggle='tooltip' target='_blank' href='suratketlahir.php?hal=edit&kd=$nik'><span class='glyphicon glyphicon-print'></span></a><br>
                    
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
S