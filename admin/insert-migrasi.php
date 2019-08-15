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
  $nama_ibu = $_POST['nama_ibu'];
  $pekerjaan_ibu = $_POST['pekerjaan_ibu'];
  $nama_ayah = $_POST['nama_ayah'];
  $pekerjaan_ayah = $_POST['pekerjaan_ayah'];
  $tgl_masuk = $_POST['tgl_masuk'];
  $no_paspor=$_POST['no_paspor'];
  $no_kitaskitap=$_POST['no_kitaskitap'];
  $no_kk=$_POST['no_kk'];
  $pendidikan = $_POST['pendidikan'];
  $status_keluarga=$_POST['status_keluarga'];
  
  $alamat_asal=$_POST['alamat_asal'];
  $rtrw_asal = $_POST['rtrw_asal'];
  $desa_asal = $_POST['desa_asal'];
  $kecamatan_asal = $_POST['kecamatan_asal'];
  $kabupaten_asal = $_POST['kabupaten_asal'];
  $kodepos_asal = $_POST['kodepos_asal'];
  $provinsi_asal = $_POST['provinsi_asal'];

  $alamat_domisili = $_POST['alamat_domisili'];
  $rtrw_domisili = $_POST['rtrw_domisili'];
  $desa_domisili = $_POST['desa_domisili'];
  $kecamatan_domisili = $_POST['kecamatan_domisili'];
  $kabupaten_domisili = $_POST['kabupaten_domisili'];
  $kodepos_domisili = $_POST['kodepos_domisili'];
  $provinsi_domisili = $_POST['provinsi_domisili'];

   $admin=$_SESSION['username'];
  $tgl_create=date('Y-m-d');
  $tgl=date("Y-m-d H:i:s");
$result = $conn->query("SELECT * from data_kk WHERE no_kk='$no_kk'");
  $row = mysqli_fetch_array ($result);

 
if (mysqli_num_rows($result)>=1) {
    echo "<script>alert('Data Sudah Ada !!'); window.location = 'datamigrasi.php'</script>";
      }
  else{
  $sql3 = $conn->query("INSERT INTO data_kk VALUES ('$no_kk','$nama','$alamat_domisili','$desa_domisili','$rtrw_domisili','$kecamatan_domisili','$kabupaten_domisili','$kodepos_domisili','$provinsi_domisili','$nik','tgl_create','','$admin')");
 $sql=$conn->query("INSERT INTO data_penduduk VALUES
       ('$nik','$nama','$tempat_lahir','$tanggal_lahir','$jk','$alamat_domisili','$rtrw_domisili','$desa_domisili','$kecamatan_domisili','$kabupaten_domisili','$provinsi_domisili','$agama','$pekerjaan','$pendidikan','$kewarganegaraan','$status','$status_keluarga','hidup','pendatang','$nama_ibu','$pekerjaan_ibu','$nama_ayah','$pekerjaan_ayah','$no_kk','$no_paspor',
       '$no_kitaskitap','$tgl_create','','$admin')");

if ($sql) {
  # code...
  $sql2=$conn->query("INSERT INTO data_migrasi
   VALUES('$id_migrasi','$nik','$nama','$tempat_lahir','$agama','$jk','$status','$pekerjaan','$kewarganegaraan','$tanggal_lahir','$rtrw_asal','$desa_asal','$kecamatan_asal','$kabupaten_asal','$provinsi_asal','$tgl_masuk','$rtrw_domisili','$desa_domisili','$kecamatan_domisili','$kabupaten_domisili','$provinsi_domisili','$tgl_create','','$admin')");
           if ($sql2){
            $log=$conn->query("INSERT into log_aktivitas VALUES('','Input Migrasi','$tgl','$admin')");
          echo"
          <!DOCTYPE html>
        <html>
        <head>
         <meta charset='utf-8'>
          <meta name='viewport' content='width=device-width, initial-scale=1'>
           
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
                  <h4 class='modal-title'>Data Migrasi</h4>
                </div>
                <div class='modal-body'>
                  <p>Data berhasil di masukan</p>
                </div>
                <div class='modal-footer'>

                   <a class='btn btn-sm btn-primary' data-placement='bottom' data-toggle='tooltip'  href='datamigrasi.php'>Ok</a>
                      
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
          } 
          else{
            echo $conn->error;
          }
}
 
 else {
    echo $conn->error;
      }
}
?>
