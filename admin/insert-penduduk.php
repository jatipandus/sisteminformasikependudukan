<?php
session_start();

include "../conn.php";


  $nik = $_POST['nik'];
  $nama = $_POST['nama'];
  $tempat_lahir = $_POST['tempat_lahir'];
  $tgl_lahir = $_POST['tgl_lahir'];
  $jk= $_POST['jk'];
  $alamat = $_POST['alamat'];
  $rtrw = $_POST['rtrw'];
  $desa = $_POST['desa'];
  $kecamatan = $_POST['kecamatan'];
  $kabupaten = $_POST['kabupaten'];
  $agama = $_POST['agama'];
  $pekerjaan = $_POST['pekerjaan'];
   $pendidikan = $_POST['pendidikan'];
  $kewarganegaraan = $_POST['kewarganegaraan'];
  $status = $_POST['status'];
  $no_kk=$_POST['no_kk'];
    $status_keluarga = $_POST['status_keluarga'];
  $asal = $_POST['asal'];
  $nama_ibu = $_POST['nama_ibu'];
  $pekerjaan_ibu = $_POST['pekerjaan_ibu'];
  $nama_ayah = $_POST['nama_ayah'];
  $pekerjaan_ayah = $_POST['pekerjaan_ayah'];
  $no_paspor=$_POST['no_paspor'];
  $no_kitaskitap=$_POST['no_kitaskitap'];
   $admin=$_SESSION['username'];
  $tgl_create=date('Y-m-d');
 $tgl=date("Y-m-d H:i:s");
  

$result = $conn->query("SELECT * from data_kk where no_kk='$no_kk'");


if (mysqli_num_rows($result) == 1) {
            $sql="INSERT INTO data_penduduk VALUES
                ('$nik','$nama','$tempat_lahir','$tgl_lahir','$jk','$alamat','$rtrw','$desa','$kecamatan','$kabupaten','$agama','$pekerjaan','$pendidikan','$kewarganegaraan','$status',
                  '$status_keluarga','hidup','$asal','$nama_ibu','$pekerjaan_ibu','$nama_ayah','$pekerjaan_ayah','$no_kk',
                  '$no_paspor','$no_kitaskitap','$tgl_create','','$admin')";
              $res=$conn->query($sql) ;
              if ($sql){
                 $log=$conn->query("INSERT into log_aktivitas VALUES('','input penduduk','$tgl','$admin')");
                  echo "<script>alert('data telah dimasukan !!'); window.location = 'datapenduduk.php'</script>";

              } else {
                 echo "gagal".$conn->error;
                  }

     }else{
       echo "<script>alert('No kk tidak ada di database, input data penduduk gagal !'); window.location = 'datapenduduk.php'</script>";

     } 

?>
