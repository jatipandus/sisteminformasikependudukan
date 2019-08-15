<?php
session_start();
$namafolder="gambar_pelanggan/"; //tempat menyimpan file

include "../conn.php";

  $no_kk = $_POST['no_kk'];
  $nama_kepalakeluarga = $_POST['nama_lengkap'];
  $nama_lengkap=$_POST['nama_lengkap'];
  $alamat= $_POST['alamat'];
  $desakelurahan=$_POST['desakelurahan'];
  $rtrw=$_POST['desakelurahan'];
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
  $status_keluarga = $_POST['status_keluarga'];
  $kewarganegaraan = $_POST['kewarganegaraan'];
  $no_paspor = $_POST['no_paspor'];
  $no_kitaskitap = $_POST['no_kitaskitap'];

  $ayah = $_POST['ayah'];
  $ibu = $_POST['ibu'];
  $pekerjaan_ayah= $_POST['pekerjaan_ayah'];
  $pekerjaan_ibu = $_POST['pekerjaan_ibu'];
  $nikk=$_GET['kd'];
  $admin=$_SESSION['username'];
  $tgl_edit=date('Y-m-d');
  $tgl=date("Y-m-d H:i:s");

 $sql=$conn->query("UPDATE data_penduduk SET nik='$nik',nama='$nama_kepalakeluarga',tempat_lahir='$tempat_lahir',tgl_lahir='$tgl_lahir',
jk='$jk',alamat='$alamat',rtrw='$rtrw',desa='$desakelurahan',kecamatan='$kecamatan',kabupatenkota='$kabupatenkota',agama='$agama',pekerjaan='$jenis_pekerjaan',
pendidikan='$pendidikan',kewarganegaraan='$kewarganegaraan',no_paspor='$no_paspor',no_kitaskitap='$no_kitaskitap',
status='$status_pernikahan',status_keluarga='$status_keluarga',nama_ibu='$ibu',pekerjaan_ibu='$pekerjaan_ibu',nama_ayah='$ayah',pekerjaan_ayah='$pekerjaan_ayah',tgl_edit='$tgl_edit',admin='$admin' 
where nik='$nikk'");
     if ($sql){
       $sqll=$conn->query("UPDATE data_kk set nama_kepalakeluarga='$nama_kepalakeluarga',alamat='$alamat',
    desakelurahan='$desakelurahan',rtrw='$rtrw',kecamatan='$kecamatan',
      kabupatenkota='$kabupatenkota',kodepos='$kodepos',provinsi='$provinsi',nik='$nik',
tgl_edit='$tgl_edit',admin='$admin' WHERE no_kk='$no_kk'"); 
                   if ($sqll){
                     $log=$conn->query("INSERT into log_aktivitas VALUES('','Edit KK','$tgl','$admin')");
                 echo "<script>alert('data telah update !!'); window.location = 'detail-kk.php?hal=edit&kd=$no_kk'</script>";
                 } else {
                  echo "gagal".$conn->error;
                    }

  } else {
    echo "gagal".$conn->error;
      }

?>
