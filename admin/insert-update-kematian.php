<?php
session_start();
include "../conn.php";

  $nik = $_POST['nik'];
  $id = $_POST['id_kematian'];
  $tgl_mati = $_POST['tgl_kematian'];
  $tmpt_makam = $_POST['tmpt_makam'];
  
  $nama_pelapor = $_POST['nama_pelapor'];
  $nik_pelapor = $_POST['nik_pelapor'];
  $hubungan_pelapor = $_POST['hubungan_pelapor'];
  $admin=$_SESSION['username'];
  $tgl_edit=date('Y-m-d');
  //$tgl_create=date('Y-m-d');
  $bln_create=date('m');
  $thn_create=date('Y');
  $tgl_create=date('Y-m-d');
  $tgl=date("Y-m-d H:i:s");

 $result = $conn->query("SELECT * from data_penduduk WHERE nik='$nik'");
  $row = mysqli_fetch_array ($result);

 $result2 = $conn->query("SELECT * from data_kematian WHERE nik='$nik'");
  $row2 = mysqli_fetch_array ($result2);

  if (mysqli_num_rows($result) < 1){
     echo "<script>alert('Nik tidak terdaftar di penduduk !!'); window.location = 'datakematian.php'</script>";
  }
  else if (mysqli_num_rows($result2)>=1) {
    echo "<script>alert('Data Sudah Ada !!'); window.location = 'datakematian.php'</script>";
      }
  else{

  $sql1=$conn->query("INSERT INTO data_kematian VALUES
    ('$id','$tgl_mati','$tmpt_makam','$nama_pelapor','$nik_pelapor','$hubungan_pelapor','$nik','$bln_create','$thn_create','$tgl_create','','$admin')");

  $sql2=$conn->query("UPDATE data_penduduk SET ket='mati',tgl_edit='$tgl_edit',
    tgl_edit='$tgl_edit',admin='$admin' WHERE nik='$nik'");


  if ($sql1 and $sql2){
      $log=$conn->query("INSERT into log_aktivitas VALUES('','Input Kematiaan','$tgl','$admin')");
        echo "<script>alert('Data Berhasil Dimasukan !!'); window.location = 'datakematian.php'</script>";
      $log2=$conn->query("INSERT into log_aktivitas VALUES('','Update Kematiaan','$tgl','$admin')");
       

  } 
  
  }

?>
