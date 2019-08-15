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
  $kabupatenkota = $_POST['kabupatenkota'];
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
  $no_paspor=$_POST['no_paspor'];
  $no_kitaskitap=$_POST['no_kitaskitap'];
  $status_keluarga=$_POST['status_keluarga'];
  $admin=$_SESSION['username'];
  $nikk=$_GET['kd'];
  $tgl_edit=date('Y-m-d');
 $tgl=date("Y-m-d H:i:s");

$sql="UPDATE data_penduduk SET nik='$nik',nama='$nama',tempat_lahir='$tempat_lahir',tgl_lahir='$tgl_lahir',jk='$jk',alamat='$alamat',rtrw='$rtrw',desa='$desa',kecamatan='$kecamatan',kabupatenkota='$kabupatenkota',provinsi='$provinsi',agama='$agama',pekerjaan='$pekerjaan',pendidikan='$pendidikan',kewarganegaraan='$kewarganegaraan',status='$status',status_keluarga='$status_keluarga',asal='$asal',nama_ibu='$nama_ibu',pekerjaan_ibu='$pekerjaan_ibu',nama_ayah='$nama_ayah',pekerjaan_ayah='$pekerjaan_ayah',no_paspor='$no_paspor',no_kitaskitap='$no_kitaskitap',tgl_edit='$tgl_edit',admin='$admin' where nik='$nikk'";
  $res=$conn->query($sql);
  if ($res){
     $log=$conn->query("INSERT into log_aktivitas VALUES('','Edit penduduk','$tgl','$admin')");
  echo "<script>alert('Data Telah di update !!'); window.location = 'detail-penduduk.php?hal=edit&kd=$nik'</script>";
  } else {
    echo "gagal".$conn->error;
      }

?>
 