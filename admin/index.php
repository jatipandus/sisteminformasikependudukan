<?php
session_start();
$siapa=$_SESSION['username'];
if (empty($_SESSION['username'])){
	header('location:../index.php');

} elseif($siapa=='penduduk'){

echo" <script> window.location = 'penduduk.php'</script>";

}    
else {
	include "../conn.php";
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sistem Kependudukan</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <meta name="description" content="Newbiee.IT">
    <meta name="keywords" content="Sistem Informasi Kependudukan">
    <!-- bootstrap 3.0.2 -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
    <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="../css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Morris chart -->
    <link href="../css/morris/morris.css" rel="stylesheet" type="text/css" />
    <!-- jvectormap -->
    <link href="../css/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
    <!-- Date Picker -->
    <link href="../css/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
    <!-- fullCalendar -->
    <!-- <link href="css/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" /> -->
    <!-- Daterange picker -->
    <link href="../css/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!-- iCheck for checkboxes and radio inputs -->
    <link href="../css/iCheck/all.css" rel="stylesheet" type="text/css" />
    <!-- bootstrap wysihtml5 - text editor -->
    <!-- <link href="css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" /> -->
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <!-- Theme style -->
    <link href="../css/style.css" rel="stylesheet" type="text/css" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.minn.css" />
  <!--Script CSS-->
  	<link type="text/css" href='https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css' rel='stylesheet'>
  	<link type="text/css" href='https://cdn.datatables.net/responsive/2.2.1/css/responsive.dataTables.min.css' rel='stylesheet'>
  	<link type="text/css" href='https://cdn.datatables.net/buttons/1.5.1/css/buttons.dataTables.min.css' rel='stylesheet'>
  
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
          <![endif]-->

          <style type="text/css">
          table {
                font-family: arial, sans-serif;
                font-size: 90%;
                border-collapse: collapse;
                width: 100%;
            }
            td, th {
                border: 1px solid #dddddd;
                padding: 1px;
                padding-left: 1px;
            }

            tr:nth-child(even) {
                background-color: #dddddd;
            }
            </style>
      </head>
      <body class="skin-black">
        <!-- header logo: style can be found in header.less -->
        <header class="header">
            <a href="index.php" class="logo">SISPEN</a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="navbar-right">
                    <ul class="nav navbar-nav">

                        <!-- User Account: style can be found in dropdown.less -->
                        <li >
                            <a href="notif_buat_ktp.php">
                                 <?php $tampil=$conn->query("SELECT nik,nama,tempat_lahir,tgl_lahir,jk,alamat,agama,pekerjaan,status, YEAR(curdate()) - YEAR(tgl_lahir) AS usia FROM data_penduduk where ket = 'hidup' and asal !='pergi' and YEAR(curdate()) - YEAR(tgl_lahir)='17' and MONTH(tgl_lahir) = MONTH(curdate()) and DAY(tgl_lahir) <= DAY(curdate())  " );
                                         $user=mysqli_num_rows($tampil);
                                           ?>
                              <i class="fa fa-bell-o"></i>
                              <span class="label label-warning"> <?php echo"$user "; ?></span>
                            </a>
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-user"></i>
                                <span><?php echo $_SESSION['fullname']; ?> <i class="caret"></i></span>
                            </a>
                            <ul class="dropdown-menu dropdown-custom dropdown-menu-right">
                                <li class="dropdown-header text-center">Account</li>

                                    <li>
                                        <a href="detail-admin.php?hal=edit&kd=<?php echo $_SESSION['user_id'];?>">
                                        <i class="fa fa-user fa-fw pull-right"></i>
                                            Profile
                                        </a>
                                        <!-- <a href="dataadmin.php">
                                        <i class="fa fa-cog fa-fw pull-right"></i>
                                            Settings
                                        </a> -->
                                        </li>

                                        <li class="divider"></li>

                                        <li>
                                            <a href="../logout.php"><i class="fa fa-ban fa-fw pull-right"></i> Logout</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </header>
                <?php
$timeout = 10; // Set timeout minutes
$logout_redirect_url = "../index.php"; // Set logout URL

$timeout = $timeout * 500; // Converts minutes to seconds
if (isset($_SESSION['start_time'])) {
    $elapsed_time = time() - $_SESSION['start_time'];
    if ($elapsed_time >= $timeout) {
        session_destroy();
        echo "<script>alert('Session Anda Telah Habis!'); window.location = '$logout_redirect_url'</script>";
    }
}
$_SESSION['start_time'] = time();
?>
<?php } ?>
                <div class="wrapper row-offcanvas row-offcanvas-left">
                    <!-- Left side column. contains the logo and sidebar -->
                    <aside class="left-side sidebar-offcanvas">
                        <!-- sidebar: style can be found in sidebar.less -->
                        <section class="sidebar">
                            <!-- Sidebar user panel -->
                            <div class="user-panel">
                                <div>
                                    <center><img src="<?php echo $_SESSION['gambar']; ?>" height="90" width="90" class="img-circle" alt="User Image" style="border: 2px solid white;" /></center>
                                </div>
                                <div class="info">
                                    <center><p><?php echo $_SESSION['fullname']; ?></p></center>

                                </div>
                            </div>
                            <!-- search form -->
                            <!--<form action="#" method="get" class="sidebar-form">
                                <div class="input-group">
                                    <input type="text" name="q" class="form-control" placeholder="Search..."/>
                                    <span class="input-group-btn">
                                        <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                                    </span>
                                </div>
                            </form> -->
                            <!-- /.search form -->
                            <!-- sidebar menu: : style can be found in sidebar.less -->
                            <?php include "menu.php"; ?>
                        </section>
                        <!-- /.sidebar -->
                    </aside>

                    <aside class="right-side">

                <!-- Main content -->
                <section class="content">

                    <div class="row" style="margin-bottom:5px;">

                        <a href="datakelahiran.php">
                        <div class="col-md-4">
                            <div class="sm-st clearfix">
                                <span class="sm-st-icon st-blue"><i class="fa fa-user"></i></span>
                                <div class="sm-st-info">
                                <?php $tampil=$conn->query("SELECT * from data_penduduk order by nik desc");
                                      $hit=0;
                                while ($total2=mysqli_fetch_array($tampil)) {
                                          if($total2['ket']=='hidup' and $total2['asal'] == 'asli'){
                                            $hit=$hit+1;
                                          }
                                      }
                                ?>
                                    <span><?php echo "$hit"; ?> Orang</span>
                                    Total Data Kelahiran
                                </div>
                            </div>
                        </div>
                        </a>

                        <a href="datakematian.php">
                        <div class="col-md-4">
                            <div class="sm-st clearfix">
                                <span class="sm-st-icon st-red"><i class="fa fa-book"></i></span>
                                <div class="sm-st-info">
                                <?php $tampil1=$conn->query("select * from data_penduduk order by nik desc");
                                $hit1=0;
                                while ($total1=mysqli_fetch_array($tampil1)) {
                                          if($total1['ket']=='mati'){
                                            $hit1=$hit1+1;
                                          }
                                      }
                    ?>
                                    <span><?php echo $hit1; ?></span>
                    
                                    Total Kematian
                                </div>
                            </div>
                        </div>
                        </a>

                        <a href="datapenduduk.php">
                        <div class="col-md-4">
                            <div class="sm-st clearfix">
                                <span class="sm-st-icon st-green"><i class="fa fa-group"></i></span>
                                <div class="sm-st-info">
                                <?php $tampil=$conn->query("select * from data_penduduk order by nik desc");
                                      $hit=0;
                                while ($total2=mysqli_fetch_array($tampil)) {
                                          if($total2['ket']=='hidup' and $total2['asal']!='pergi'){
                                            $hit=$hit+1;
                                          }
                                      }
                                ?>
                                    <span><?php echo $hit; ?></span>
                                    Total Penduduk
                                </div>
                            </div>
                        </div>
                        </a>

                        <!-- <a href="datakk.php">
                        <div class="col-md-3">
                            <div class="sm-st clearfix">
                                <span class="sm-st-icon st-green"><i class="fa fa-group"></i></span>
                                <div class="sm-st-info">
                                <?php $tampil=$conn->query("select * from data_kk order by id desc");
                        $total3=mysqli_num_rows($tampil);
                    ?>
                                    <span><?php echo "$total3"; ?> Butir</span>
                                    Total Kartu Keluarga
                                </div>
                            </div>
                        </div>
                        </a> -->

                    </div>

                    <!-- Main row -->
                    <div class="row">


                        <div class="col-md-8">
                            <!--earning graph start-->
                            <section class="panel">
                                <header class="panel-heading">
                                    Data Kelahiran 
                                    
                                    <?php 
                                    $query1="SELECT nik,nama,tgl_lahir, YEAR(curdate()) - YEAR(tgl_lahir) AS usia from data_penduduk where asal = 'asli' and ket = 'hidup' order by nik desc limit 7;";
                                     
                                    $tampil=$conn->query($query1) or die(mysql_error());
        //tanggal lahir
                  
                     
                     
                                     ?>
                                </header>

                                <div class="panel-body">
                                    <!-- <canvas id="linechart" width="600" height="330"></canvas> -->


                                   <table id="example" class="display responsive nowrap" style="width:100%">
                                        <thead>
                                          <tr>
                                            <th>NIK</th>
                                            <th>Nama Lengkap</th>
                                            <th>Tanggal lahir</th>
                                            <th>Umur</th>
                                          </tr>
                                        </thead>
                                        <?php 
                                    $query1="SELECT nik,nama,tgl_lahir, YEAR(curdate()) - YEAR(tgl_lahir) AS usia from data_penduduk where asal = 'asli' and ket = 'hidup' order by nik desc limit 7;";
                                     
                                    $tampil=$conn->query($query1) or die(mysql_error());
        //tanggal lahir                  
                                     ?><tbody>
                                        <?php while($data=mysqli_fetch_array($tampil))
                                        { 
                                                $birthDt = new DateTime($data['tgl_lahir']);
                                                  //tanggal hari ini
                                                $today = new DateTime('today');
                                                  //tahun
                                                $y = $today->diff($birthDt)->y;
                                                  //bulan
                                                $m = $today->diff($birthDt)->m;
                                                  //hari
                                                $d = $today->diff($birthDt)->d;
                                        ?>
                                        <tr>
                                            <td> <a href="detail-kelahiran.php?hal=edit&kd=<?php echo $data['nik'];?>"><?php echo $data['nik']; ?></a></td>
                                            <td><?php echo $data['nama']; ?></td>
                                            <td><?php echo $data['tgl_lahir']; ?></td>
                                            <td><?php echo  $y . " tahun " . $m . " bulan " . $d . " hari"; ?> </td>                                        
                                        </tr>
                                          <?php } ?>
                                        </tbody>
                                    </table>
                                </div>
                                        </section>
                                        <!--earning graph end-->

                                    </div>
                                    <div class="col-lg-4">

                                        <!--chat start-->
                                        <section class="panel">
                                            <header class="panel-heading">
                                                Pemberitahuan
                                            </header>

                                                <div class="panel-body" id="noti-box">
                                                <?php
                                                $tampil=$conn->query("SELECT nik,nama,tempat_lahir,tgl_lahir,jk,alamat,agama,pekerjaan,status, YEAR(curdate()) - YEAR(tgl_lahir) AS usia FROM data_penduduk where ket = 'hidup' and asal !='pergi' and YEAR(curdate()) - YEAR(tgl_lahir)='17' and MONTH(tgl_lahir) = MONTH(curdate()) and DAY(tgl_lahir) <= DAY(curdate()) ORDER BY tgl_lahir ASC limit 2 ") ; 
                                                while($data2=mysqli_fetch_array($tampil)){
                                                ?>
                                                    <div class="alert alert-block alert-warning">
                                                        <button data-dismiss="alert" class="close close-sm" type="button">
                                                            <i class="fa fa-times"></i>
                                                        </button>
                                                        <strong><?php echo $data2['nama'];?></strong>, Telah berusia 17 tahun.
                                                    </div>
                                                    <?php } ?>

                                                <?php
                                                $tampil=$conn->query("SELECT * from data_kk  limit 1 ");
                                                while($data3=mysqli_fetch_array($tampil)){
                                                ?>
                                                    <div class="alert alert-success">
                                                        <button data-dismiss="alert" class="close close-sm" type="button">
                                                            <i class="fa fa-times"></i>
                                                        </button>
                                                        <strong><?php echo $data3['nama_kepalakeluarga']; ?></strong>, Telah membuat Kartu Keluarga.
                                                    </div>
                                                <?php } ?> 

                                                <?php
                                                $tampil=$conn->query("SELECT * from data_penduduk where  YEAR(curdate()) = YEAR(tgl_lahir) and MONTH(tgl_lahir) = MONTH(curdate()) and DAY(tgl_lahir) = DAY(curdate())  ORDER BY tgl_lahir ASC limit 2 ");
                                                while($data4=mysqli_fetch_array($tampil)){
                                                ?>
                                                    <div class="alert alert-info">
                                                        <button data-dismiss="alert" class="close close-sm" type="button">
                                                            <i class="fa fa-times"></i>
                                                        </button>
                                                        <strong><?php echo $data4['nama']; ?></strong>, Bayi yang baru lahir.
                                                    </div>
                                                <?php } ?>

                                                <?php
                                                $tampil1=$conn->query("SELECT * FROM data_penduduk WHERE ket='mati'  limit 1");
                                                while($data5=mysqli_fetch_array($tampil1)){
                                                ?>
                                                    <div class="alert alert-danger">
                                                        <button data-dismiss="alert" class="close close-sm" type="button">
                                                            <i class="fa fa-times"></i>
                                                        </button>
                                                        <strong><?php echo $data5['nama']; ?> </strong> Telah meninggal dunia.
                                                    </div>
                                                <?php } ?>
                                                </div>
                                        </section>
                                                              </div>
                  </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="panel">
                                <header class="panel-heading">
                                    Daftar Penduduk Migrasi
                                </header><?php
                        $tampil=$conn->query("SELECT * from data_migrasi limit 5");
                        while($data1=mysqli_fetch_array($tampil)){
                        ?>
                                <ul class="list-group teammates">
                                    <li class="list-group-item">

                                        <a href="datamigrasi.php"><?php echo $data1['nama']; ?></a>
								 <div class="pull-right hidden-phone">
                                  <?php echo $data1['tgl_masuk']; ?></a>
                                   
                                    </div
                                    </li>
                                </ul>
                               <?php } ?>
                                <div class="panel-footer bg-white">
                                    <!-- <span class="pull-right badge badge-info">32</span> -->
                                    <a href="datamigrasi.php" class="btn btn-sm btn-info">Lihat Data <i class="fa fa-user"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                          <section class="panel tasks-widget">
                              <header class="panel-heading">
                                Daftar Penduduk Mutasi
                            </header>
                            <div class="panel-body">

                              <div class="task-content">

                                  <ul class="task-list">
                                  <?php
                                  $tampil=$conn->query("SELECT * from data_mutasi limit 5");
                                  while($data6=mysqli_fetch_array($tampil)){
                                  ?>
                                      <li>
                                          <div class="task-checkbox">
                                              <!-- <input type="checkbox" class="list-child" value=""  /> -->
                                            
                                              <!-- <input type="checkbox" class="square-grey"/> -->
                                          </div>
                                          <div class="task-title">
                                              <span class="task-title-sp"><?php echo $data6['nama']; ?></span>
                                               <div class="pull-right hidden-phone">
                                              <span class="label label-primary"><?php echo $data6['tanggal_keluar']; ?></span>
                                              </div>
                                          </div>
                                      </li>
                                    <?php } ?>
                                  </ul>
                              </div>

                              <div class=" add-task-row">
                                  <a class="btn btn-warning btn-sm pull-left" href="datamutasi.php">Lihat Data</a>
                                  <!--<a class="btn btn-default btn-sm pull-right" href="#">See All Tasks</a>-->

                              </div>
                          </div>
                      </section>
                  </div>
              </div>
              <!-- row end -->
<!-- Charts -->
<?php 
//Agama
$islam = $conn->query("SELECT * FROM data_penduduk WHERE ket = 'hidup' and asal !='pergi' and agama = 'islam'");
 $totalislam = mysqli_num_rows($islam) ;

$kristen = $conn->query("SELECT * FROM data_penduduk WHERE ket = 'hidup' and asal !='pergi' and agama = 'protestan'");
 $totalkristen = mysqli_num_rows($kristen) ; 

$katolik = $conn->query("SELECT * FROM data_penduduk WHERE ket = 'hidup' and asal !='pergi' and agama = 'katolik'");
 $totalkatolik = mysqli_num_rows($katolik) ;

$hindu = $conn->query("SELECT * FROM data_penduduk WHERE ket = 'hidup' and asal !='pergi' and agama = 'hindu'");
 $totalhindu = mysqli_num_rows($hindu) ;

$budha = $conn->query("SELECT * FROM data_penduduk WHERE ket = 'hidup' and asal !='pergi' and agama = 'budha'");
 $totalbudha = mysqli_num_rows($budha) ;

 $konghuchu = $conn->query("SELECT * FROM data_penduduk WHERE ket = 'hidup' and asal !='pergi' and agama = 'konghuchu'");
 $totalkonghuchu = mysqli_num_rows($konghuchu) ;

$lainnya = $conn->query("SELECT * FROM data_penduduk WHERE ket = 'hidup' and asal !='pergi' and agama != 'budha' and agama != 'katolik' and agama != 'protestan' and agama != 'islam' and agama != 'konghuchu' and agama != 'hindu' ");
 $totallainnya = mysqli_num_rows($lainnya) ;

 //JK
 $pria = $conn->query("SELECT * FROM data_penduduk WHERE ket = 'hidup' and asal !='pergi' and jk = 'laki-laki'");
 $l = mysqli_num_rows($pria) ;
 $wanita = $conn->query("SELECT * FROM data_penduduk WHERE ket = 'hidup' and asal !='pergi' and jk = 'perempuan'" );
 $p = mysqli_num_rows($wanita) ;

//Kategori
 $balita = $conn->query("SELECT * FROM data_penduduk WHERE YEAR(curdate()) - YEAR(tgl_lahir) <= '5' and ket = 'hidup' and asal != 'pergi' ");
 $totalbalita = mysqli_num_rows($balita) ;

$kanak = $conn->query("SELECT * FROM data_penduduk WHERE YEAR(curdate()) - YEAR(tgl_lahir) >= '6' and YEAR(curdate()) - YEAR(tgl_lahir) <= '11' and ket = 'hidup' and asal != 'pergi'");
 $totalkanak = mysqli_num_rows($kanak) ;

$remaja = $conn->query("SELECT * FROM data_penduduk WHERE YEAR(curdate()) - YEAR(tgl_lahir) >= '12' and YEAR(curdate()) - YEAR(tgl_lahir) <= '25' and ket = 'hidup' and asal != 'pergi'");
 $totalremaja = mysqli_num_rows($remaja) ;

$dewasa = $conn->query("SELECT * FROM data_penduduk WHERE YEAR(curdate()) - YEAR(tgl_lahir) >= '26' and YEAR(curdate()) - YEAR(tgl_lahir) <= '45' and ket = 'hidup' and asal != 'pergi'");
 $totaldewasa = mysqli_num_rows($dewasa) ;

$lansia = $conn->query("SELECT * FROM data_penduduk WHERE YEAR(curdate()) - YEAR(tgl_lahir) >= '46' and YEAR(curdate()) - YEAR(tgl_lahir) <= '65' and ket = 'hidup' and asal != 'pergi'");
 $totallansia = mysqli_num_rows($lansia) ;

$manula = $conn->query("SELECT * FROM data_penduduk WHERE YEAR(curdate()) - YEAR(tgl_lahir) >= '66' and ket = 'hidup' and asal != 'pergi' ");
 $totalmanula = mysqli_num_rows($manula) ;

 //Status
 $kawin = $conn->query("SELECT * FROM data_penduduk WHERE ket = 'hidup' and asal !='pergi' and status = 'kawin'");
 $totalkawin = mysqli_num_rows($kawin) ;

$belumkawin = $conn->query("SELECT * FROM data_penduduk WHERE ket = 'hidup' and asal !='pergi' and status = 'belum_kawin'");
 $totalbelumkawin = mysqli_num_rows($belumkawin) ;

$duda = $conn->query("SELECT * FROM data_penduduk WHERE ket = 'hidup' and asal !='pergi' and status = 'duda'");
 $totalduda = mysqli_num_rows($duda) ;

$janda = $conn->query("SELECT * FROM data_penduduk WHERE ket = 'hidup' and asal !='pergi' and status = 'janda'");
 $totaljanda = mysqli_num_rows($janda) ;


 $dataPointsJK = array(
  array("label"=> "Pria", "y"=> $l),
  array("label"=> "Wanita", "y"=> $p)
);

 $dataPointsKategori = array(
  array("label"=> "Balita", "y"=> $totalbalita),
  array("label"=> "Kanak-Kanak", "y"=> $totalkanak),
  array("label"=> "Remaja", "y"=> $totalremaja),
  array("label"=> "Dewasa", "y"=> $totaldewasa),
  array("label"=> "Lansia", "y"=> $totallansia),
  array("label"=> "Manula", "y"=> $totalmanula)
);

 $dataPointsAgama = array(
  array("label"=> "Islam", "y"=> $totalislam),
  array("label"=> "Protestan", "y"=> $totalkristen),
  array("label"=> "Katolik", "y"=> $totalkatolik),
  array("label"=> "Hindu", "y"=> $totalhindu),
  array("label"=> "Budha", "y"=> $totalbudha),
  array("label"=> "Konghuchu", "y"=> $totalkonghuchu),
  array("label"=> "Lainnya", "y"=> $totallainnya)
);

 $dataPointsStatus = array(
  array("label"=> "Kawin", "y"=> $totalkawin),
  array("label"=> "Belum Kawin", "y"=> $totalbelumkawin),
  array("label"=> "Janda", "y"=> $totaljanda),
  array("label"=> "Duda", "y"=> $totalduda)
);

 ?>

<script>
window.onload = function() {
var grafagama = new CanvasJS.Chart(document.getElementById('grafagama'), {
  animationEnabled: true,
  
  data: [{
    type: "pie",
    startAngle: 25,
    showInLegend: "true",
    toolTipContent: "<b>{label}</b>: {y}%",  
    legendText: "{label}",
    indexLabelFontSize: 12,
    indexLabel: "{label} - #percent%",
    dataPoints: <?php echo json_encode($dataPointsAgama, JSON_NUMERIC_CHECK); ?>
  }]
});

var grafjk = new CanvasJS.Chart(document.getElementById('grafjk'), {
  animationEnabled: true,
  
  data: [{
    type: "pie",
    startAngle: 25,
    showInLegend: "true",
    toolTipContent: "<b>{label}</b>: {y}%",  
    legendText: "{label}",
    indexLabelFontSize: 12,
    indexLabel: "{label} - #percent%",
    dataPoints: <?php echo json_encode($dataPointsJK, JSON_NUMERIC_CHECK); ?>
  }]
});

var grafkategori = new CanvasJS.Chart(document.getElementById('grafkategori'), {
  animationEnabled: true,  
  data: [{
    type: "pie",
    startAngle: 25,
    showInLegend: "true",
    toolTipContent: "<b>{label}</b>: {y}%",  
    legendText: "{label}",
    indexLabelFontSize: 12,
    indexLabel: "{label} - #percent%",
    dataPoints: <?php echo json_encode($dataPointsKategori, JSON_NUMERIC_CHECK); ?>
  }]
});

var grafstatus = new CanvasJS.Chart(document.getElementById('grafstatus'), {
  animationEnabled: true,  
  data: [{
    type: "pie",
    startAngle: 25,
    showInLegend: "true",
    toolTipContent: "<b>{label}</b>: {y}%",  
    legendText: "{label}",
    indexLabelFontSize: 12,
    indexLabel: "{label} - #percent%",
    dataPoints: <?php echo json_encode($dataPointsStatus, JSON_NUMERIC_CHECK); ?>
  }]
});


grafagama.render();
grafjk.render(); 
grafkategori.render();
grafstatus.render();
}
</script>

<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>


              <!-- end charts -->
              <div class="row">
                        <div class="col-md-6">
                            <div class="panel">
                                <header class="panel-heading">
                                    <center>Charts Agama</center>
                                </header>
                                <div id="grafagama" style="height: 270px; width: 100%;"></div>
                                <table>
                                  <tr>
                                    <th><center>Agama</center></th>
                                    <th><center>Detail Data</center></th>
                                  </tr>

                                  <tr>
                                    <td><center>Islam</center></td>
                                    <td><center> <a href="islam.php"><?php echo "$totalislam"; ?></a></center></td>
                                  </tr>
                                  
                                  <tr>
                                    <td><center>Protestan</center></td>
                                    <td><center> <a href="kristen.php"><?php echo "$totalkristen"; ?></a></center></td>
                                  </tr>

                                  <tr>
                                    <td><center>Katolik</center></td>
                                    <td><center> <a href="katolik.php"><?php echo "$totalkatolik"; ?></a></center></td>
                                  </tr>

                                  <tr>
                                    <td><center>Hindu</center></td>
                                    <td><center> <a href="hindu.php"><?php echo "$totalhindu"; ?></a></center></td>
                                  </tr>

                                  <tr>
                                    <td><center>Budha</center></td>
                                    <td><center> <a href="budha.php"><?php echo "$totalbudha"; ?></a></center></td>
                                  </tr>

                                  <tr>
                                    <td><center>Konghuchu</center></td>
                                    <td><center> <a href="konghuchu.php"><?php echo "$totalkonghuchu"; ?></a></center></td>
                                  </tr>

                                  <tr>
                                    <td><center>Lainnya*</center></td>
                                    <td><center> <a href="lainnya.php"><?php echo "$totallainnya"; ?></a></center></td>
                                  </tr>
                                </table>
                                *Lainnya : Atheis, Dan Lain-Lain
                                <ul class="list-group teammates">
                                    <li class="list-group-item">
                                    </li>
                                </ul>
                            </div>
                        </div>
                         <div class="col-md-6">
                            <div class="panel">
                                <header class="panel-heading">
                                    <center>Charts Kategori</center>
                                </header><?php
                                //include 'grafkategori.php';    ?>
                                <div id="grafkategori" style="height: 270px; width: 100%;"></div>
                                    <table>
                                      <tr>
                                        <th><center>Keterangan</center></th>
                                        <th><center>Rentang Umur</center></th>
                                        <th><center>Detail Data</center></th>
                                      </tr>

                                      <tr>
                                        <td><center>Balita</center></td>
                                        <td><center>0 - 5 Tahun </center></td>      
                                        <td><center> <a href="balita.php"><?php echo "$totalbalita"; ?></a></center></td>
                                      </tr>
                                      <tr>
                                        <td><center>Kanak - Kanak </center></td>
                                        <td><center>6 - 11 Tahun </center></td>
                                        <td><center> <a href="kanak.php"><?php echo "$totalkanak"; ?></a></center></td>
                                      </tr>

                                      <tr>
                                        <td><center> Remaja </center></td>
                                        <td><center> 12 - 25 Tahun </center></td>
                                        <td><center> <a href="remaja.php"><?php echo "$totalremaja"; ?></a></center></td>
                                      </tr>

                                      <tr>
                                        <td><center> Dewasa </center></td>
                                        <td><center> 26 - 45 Tahun </center></td>
                                        <td><center> <a href="dewasa.php"><?php echo "$totaldewasa"; ?></a></center></td>
                                      </tr>

                                      <tr>
                                        <td><center> Lansia </center></td>
                                        <td><center> 46 - 65 Tahun </center></td>
                                        <td><center> <a href="lansia.php"><?php echo "$totallansia"; ?></a></center></td>
                                      </tr>

                                      <tr>
                                        <td><center> Manula </center></td>
                                        <td><center> Lebih Dari 66 Tahun </center></td>
                                        <td><center> <a href="manula.php"><?php echo "$totalmanula"; ?></a> </center></td>
                                      </tr>
                                    </table>
                                <ul class="list-group teammates">
                                    <li class="list-group-item">
                                    </li>
                                </ul>
                            </div>
                        </div>
              </div>
              <!-- row end -->
              <div class="row">
                <div class="col-md-6">
                            <div class="panel">
                                <header class="panel-heading">
                                    <center>Charts Status</center>
                                </header><?php
                                //include 'grafstatus.php';    ?>
                            <div id="grafstatus" style="height: 270px; width: 100%;"></div>
                                <table>
                                      <tr>
                                        <th><center>Status</center></th>
                                        <th><center>Detail Data</center></th>
                                      </tr>
                                      <tr>
                                        <td><center>Kawin</center></td>
                                        <td><center> <a href="kawin.php"><?php echo "$totalkawin"; ?></a></center></td>
                                      </tr>

                                      <tr>
                                        <td><center>Belum kawin</center></td>
                                        <td><center> <a href="belumkawin.php"><?php echo "$totalbelumkawin"; ?></a></center></td>
                                      </tr>

                                      <tr>
                                        <td><center>Duda</center></td>
                                        <td><center><a href="duda.php"><?php echo "$totalduda"; ?></a> </center></td>
                                      </tr>

                                      <tr>
                                        <td><center>Janda</center></td>
                                        <td><center> <a href="janda.php"><?php echo "$totaljanda"; ?></a></center></td>
                                      </tr>
                                </table>
                                <ul class="list-group teammates">
                                    <li class="list-group-item">
                                    </li>
                                </ul>
                            </div>
                        </div>
                     <div class="col-md-6">
                            <div class="panel">
                                <header class="panel-heading">
                                    <center>Charts Jenis Kelamin</center>
                                </header><?php
                                //include 'grafjk.php';    ?>
                                <div id="grafjk" style="height: 270px; width: 100%;"></div>
                                    <table>
                                      <tr>
                                        <th colspan="2"><center>Detail Data</center></th>
                                      </tr>

                                      <tr>
                                        <th><center>Pria</center></th>
                                        <th><center>Wanita</center></th>
                                      </tr>

                                      <tr>
                                        <td><center> <a href="jkpria.php"><?php echo "$l"; ?></a> </center></td>
                                        <td><center> <a href="jkwanita.php"><?php echo "$p"; ?></a></center></td>
                                      </tr>
                                    </table>
                                <ul class="list-group teammates">
                                    <li class="list-group-item">
                                    </li>
                                </ul>
                            </div>
                        </div>   
              </div>

              <!-- row end -->
                </section><!-- /.content -->
                <div class="footer-main">
                    Copyright &copy <a href="http://www.facebook/ngihiy.com" target="_blank">MYTHIC.IT</a> 2017
                </div>
            </aside><!-- /.right-side -->

        </div><!-- ./wrapper -->


        <!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <script src="../js/jquery.min.js" type="text/javascript"></script>

        <!-- jQuery UI 1.10.3 -->
        <script src="../js/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
        <!-- Bootstrap -->
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <!-- daterangepicker -->
        <script src="../js/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>

        <script src="../js/plugins/chart.js" type="text/javascript"></script>

        <!-- datepicker
        <script src="js/plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>-->
        <!-- Bootstrap WYSIHTML5
        <script src="js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>-->
        <!-- iCheck -->
        <script src="../js/plugins/iCheck/icheck.min.js" type="text/javascript"></script>
        <!-- calendar -->
        <script src="../js/plugins/fullcalendar/fullcalendar.js" type="text/javascript"></script>

        <!-- Director App -->
        <script src="../js/Director/app.js" type="text/javascript"></script>

        <!-- Director dashboard demo (This is only for demo purposes) -->
        <script src="../js/Director/dashboard.js" type="text/javascript"></script>

        <!-- Director for demo purposes -->
        <script type="text/javascript">
            $('input').on('ifChecked', function(event) {
                // var element = $(this).parent().find('input:checkbox:first');
                // element.parent().parent().parent().addClass('highlight');
                $(this).parents('li').addClass("task-done");
                console.log('ok');
            });
            $('input').on('ifUnchecked', function(event) {
                // var element = $(this).parent().find('input:checkbox:first');
                // element.parent().parent().parent().removeClass('highlight');
                $(this).parents('li').removeClass("task-done");
                console.log('not');
            });

        </script>
        <script>
            $('#noti-box').slimScroll({
                height: '400px',
                size: '5px',
                BorderRadius: '5px'
            });

            $('input[type="checkbox"].flat-grey, input[type="radio"].flat-grey').iCheck({
                checkboxClass: 'icheckbox_flat-grey',
                radioClass: 'iradio_flat-grey'
            });
</script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/responsive/2.2.1/js/dataTables.responsive.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.colVis.min.js"></script>
<script>
   $(document).ready(function() {
      $('#example').DataTable( {
        dom: 'Bfrtip',
        buttons: [
        'colvis'
        ]
    } );
  } );
</script>
</body>
</html>
