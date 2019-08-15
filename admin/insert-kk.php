<?php
session_start();
$namafolder="gambar_pelanggan/"; //tempat menyimpan file

include "../conn.php";

  $no_kk = $_POST['no_kk'];
  $nama_kepalakeluarga = $_POST['nama_lengkap'];
  $nama_lengkap=$_POST['nama_lengkap'];
  $alamat= $_POST['alamat'];
  $desakelurahan=$_POST['desakelurahan'];
  $rtrw=$_POST['rtrw'];
  $kecamatan=$_POST['kecamatan'];
  $kabupatenkota=$_POST['kabupatenkota'];
  $kodepos=$_POST['kodepos'];
  $provinsi=$_POST['provinsi'];
  $nik = $_POST['nik'];
  

  $jk = $_POST['jk'];
  $tempat_lahir = $_POST['tempat_lahir'];
  $tgl_lahir = $_POST['tgl_lahir'];
  $agama = $_POST['agama'];
  $pendidikan = $_POST['pendidikan'];
  $jenis_pekerjaan = $_POST['jenis_pekerjaan'];
  $status_pernikahan = $_POST['status_pernikahan'];
  $status_hubungankeluarga = 'kepala keluarga';
  $kewarganegaraan = $_POST['kewarganegaraan'];
  $no_paspor = $_POST['no_paspor'];
  $no_kitaskitap = $_POST['no_kitaskitap'];
  $ayah = $_POST['ayah'];
  $ibu = $_POST['ibu'];
  $admin=$_SESSION['username'];
  $tgl_create=date('Y-m-d');
  $tgl=date("Y-m-d H:i:s");
  $pekerjaan_ibu=$_POST['pekerjaan_ibu'];
  $pekerjaan_ayah=$_POST['pekerjaan_ayah'];



   $sql1=$conn->query("INSERT INTO data_penduduk VALUES
    ('$nik','$nama_lengkap','$tempat_lahir','$tgl_lahir','$jk','$alamat','$rtrw','$desakelurahan','$kecamatan','$kabupatenkota','$provinsi','$agama','$jenis_pekerjaan','$pendidikan', '$kewarganegaraan','$status_pernikahan','$status_hubungankeluarga','hidup', 'asli','$ibu','$pekerjaan_ibu','$ayah','$pekerjaan_ayah','$no_kk','$no_paspor','$no_kitaskitap','$tgl_create','','$admin')");

     if ($sql1){
      
            
             $sql=$conn->query("INSERT INTO data_kk VALUES
    ('$no_kk','$nama_kepalakeluarga','$alamat','$desakelurahan','$rtrw','$kecamatan','$kabupatenkota','$kodepos','$provinsi','$nik','$tgl_create','','$admin')"); 
              if($sql){
                  $log=$conn->query("INSERT into log_aktivitas VALUES('','update anggota KK','$tgl','$admin')");
               echo "<script>alert('data Berhasil dimasukan !!'); window.location = 'datakk.php'</script>";
                
              }
        else {
        echo "<script>alert('data gagal dimasukan'); window.location = 'datakk.php'</script>";
          }


  } else {
  	echo "gagagalalalajal".$conn->error;
      }

?>
