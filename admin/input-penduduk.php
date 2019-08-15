<?php
session_start();
if (empty($_SESSION['username'])){
	header('location:../index.php');
} else {
	include "../conn.php";
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Input Data Penduduk</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <meta name="description" content="Alpha.IT">
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



    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
          <![endif]-->

          <style type="text/css">

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
                          </li>
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
                                       <!--  <a href="dataadmin.php">
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
$logout_redirect_url = "../login.php"; // Set logout URL

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

                    <div class="row">
                        <div class="col-xs-12">
                            <div class="panel">
                                <header class="panel-heading">
                                    <b>Input Data Penduduk</b>

                                </header>
                                <!-- <div class="box-header"> -->
                                    <!-- <h3 class="box-title">Responsive Hover Table</h3> -->

                                <!-- </div> -->
                                <div class="panel-body">
                      <form class="form-horizontal style-form" style="margin-top: 20px;" action="insert-penduduk.php" method="post" enctype="multipart/form-data" name="form1" id="form1">
                          
                          
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">NIK</label>
                              <div class="col-sm-8">
                                  <input name="nik" type="text" id="nik" class="form-control" placeholder="NIK" required />
                                  <!--<span class="help-block">A block of help text that breaks onto a new line and may extend beyond one line.</span>-->
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Nama</label>
                              <div class="col-sm-8">
                                  <input name="nama" type="text" id="nama" class="form-control" placeholder="Nama" required />
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Tempat Lahir</label>
                              <div class="col-sm-8">
                                  <input name="tempat_lahir" type="text" id="tempat_lahir" placeholder="tempat lahir" class="form-control" required />
                                  <!--<span class="help-block">A block of help text that breaks onto a new line and may extend beyond one line.</span>-->
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Tanggal Lahir</label>
                              <div class="col-sm-8">
                                  <input name="tgl_lahir" type="date" id="tgl_lahir" class="form-control" required />
                                  <!--<span class="help-block">A block of help text that breaks onto a new line and may extend beyond one line.</span>-->
                              </div>
                          </div>

													<div class="form-group">
															<label class="col-sm-2 col-sm-2 control-label">Jenis Kelamin</label>
															<div class="col-sm-4">
																	<select class="form-control" name="jk" id="jk">
																	<option> -- Pilih Salah Satu --</option>
																	<option value="laki-laki"> Laki - Laki</option>
																	<option value="perempuan"> Perempuan</option>
																	</select>
															</div>
													</div>
													<div class="form-group">
															<label class="col-sm-2 col-sm-2 control-label">Alamat</label>
															<div class="col-sm-8">
																	<input name="alamat" class="form-control" id="alamat" type="text" placeholder="Alamat" required />
															</div>
													</div>
															<div class="form-group">
															<label class="col-sm-3 col-sm-3 control-label">RT/RW</label>
															<div class="col-sm-7">
																	<input name="rtrw" class="form-control" id="rtrw" type="text" placeholder="00/00" required />
															</div>
															</div>
															<div class="form-group">
															<label class="col-sm-3 col-sm-3 control-label">Desa/Kel</label>
															<div class="col-sm-7">
																	<input name="desa" class="form-control" id="desa" type="text" placeholder="Desa/Kel" required />
															</div>
															</div>
															<div class="form-group">
                              <label class="col-sm-3 col-sm-3 control-label">Kecamatan</label>
                              <div class="col-sm-7">
                                  <input name="kecamatan" class="form-control" id="kecamatan" type="text" placeholder="Kecamatan" required />
                              </div>
                              </div>
                              <div class="form-group">
                              <label class="col-sm-3 col-sm-3 control-label">Kabupaten/Kota</label>
                              <div class="col-sm-7">
                                  <input name="kabupaten" class="form-control" id="kabupaten" type="text" placeholder="Kabupaten/Kota" required />
                              </div>
                              </div>

                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Agama</label>
                              <div class="col-sm-4">
                                  <select class="form-control" name="agama" id="agama">
                                  <option> -- Pilih Salah Satu --</option>
                                   <option value="islam"> Islam</option>
                                  <option value="protestan"> Protestan</option>
                                  <option value="katolik"> Katolik</option>
                                  <option value="hindu"> Hindu</option>
                                  <option value="budha"> Budha</option>
                                  <option value="konghuchu"> Konghuchu</option>
                                  <option value="lain"> Lain-Lainnya</option>
                                  </select>
                              </div>
                          </div>

													<!-- <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Agama</label>
                              <div class="col-sm-8">
                                  <input name="agama" class="form-control" id="agama" type="text" placeholder="Agama" required />
                              </div>
                          </div> -->

													<div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Pekerjaan</label>
                              <div class="col-sm-8">
                                  <input name="pekerjaan" class="form-control" id="pekerjaan" type="text" placeholder="Pekerjaan" required />
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Pendidikan</label>
                              <div class="col-sm-8">
                                  <input name="pendidikan" class="form-control" id="pendidikan" type="text" placeholder="Pendidikan" required />
                              </div>
                          </div>

                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Kewarganegaraan</label>
                              <div class="col-sm-4">
                                  <select class="form-control" name="kewarganegaraan" id="kewarganegaraan">
                                  <option> -- Pilih Salah Satu --</option>
                                  <option value="wni"> WNI</option>
                                  <option value="wna"> WNA</option>
                                  </select>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Status perkawinan</label>
                              <div class="col-sm-4">
                                  <select class="form-control" name="status" id="status">
                                  <option> -- Pilih Salah Satu --</option>
                                  <option value="kawin"> Kawin</option>
                                  <option value="belum_kawin"> Belum Kawin</option>
                                  <option value="duda"> Duda</option>
                                  <option value="janda"> Janda</option>
                                  </select>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Status dalam keluarga</label>
                              <div class="col-sm-4">
                                  <select class="form-control" name="status_keluarga" id="status">
                                  <option> -- Pilih Salah Satu --</option>
                                  <option value="kepala keluarga"> Kepala keluarga</option>
                                  <option value="istri"> Istri</option>
                                  <option value="anak"> Anak</option>
                                  <option value="famili lain"> famili lain</option>
                                  </select>
                              </div>
                          </div>
                              <div class="form-group">
                                  <label class="col-sm-2 col-sm-2 control-label">Status Penduduk</label>
                                  <div class="col-sm-4">
                                  <select class="form-control" name="asal" id="asal">
                                  <option value="asli"> Asli</option>
                                  <option value="pendatang"> Pendatang</option>
                                  </select>
                              </div>
                              </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Nama Ibu</label>
                              <div class="col-sm-8">
                                  <input name="nama_ibu" class="form-control" id="nama_ibu" type="text" placeholder="Nama Ibu" required />
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Pekerjaan Ibu</label>
                              <div class="col-sm-8">
                                  <input name="pekerjaan_ibu" class="form-control" id="pekerjaan_ibu" type="text" placeholder="Pekerjaan Ibu" required />
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Nama Ayah</label>
                              <div class="col-sm-8">
                                  <input name="nama_ayah" class="form-control" id="nama_ayah" type="text" placeholder="Nama Ayah" required />
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Pekerjaan Ayah</label>
                              <div class="col-sm-8">
                                  <input name="pekerjaan_ayah" class="form-control" id="pekerjaan_ayah" type="text" placeholder="Pekerjaan Ayah" required />
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">No KK</label>
                              <div class="col-sm-8">
                                  <input name="no_kk" class="typeahead form-control" id="kk" type="text" placeholder="nomor kk" required />
                              </div>
                          </div>
                          <script src="jquery.js"></script>
                            <script src="bootstrap3-typeahead.min.js"></script>
                                   <script>
                          $('input.typeahead').typeahead({
                            source:  function (query, process) {
                            return $.get('data_kk.php', { query: query }, function (data) {
                                console.log(data);
                                data = $.parseJSON(data);
                                return process(data);
                              });
                            }
                          });
                          </script>
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">No paspor</label>
                              <div class="col-sm-8">
                                  <input name="no_paspor" class="form-control" id="paspor" type="text" placeholder="nomor paspor" required />
                              </div>
                          </div>
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">No Kitaskitap</label>
                              <div class="col-sm-8">
                                  <input name="no_kitaskitap" class="form-control" id="kitas" type="text" placeholder="nomor kitas kitap" required />
                              </div>
                          </div>

                          <div class="form-group" style="margin-bottom: 20px;">
                              <label class="col-sm-2 col-sm-2 control-label"></label>
                              <div class="col-sm-8">
                                  <input type="submit" value="Simpan" class="btn btn-sm btn-primary" />&nbsp;
	                              <a href="datapenduduk.php" class="btn btn-sm btn-danger">Batal </a>
                              </div>
                          </div>
                          <div style="margin-top: 20px;"></div>
                      </form>
                                </div>
                            </div><!-- /.box -->
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
<script type="text/javascript">
    $(function() {
                "use strict";
                //BAR CHART
                var data = {
                    labels: ["January", "February", "March", "April", "May", "June", "July"],
                    datasets: [
                        {
                            label: "My First dataset",
                            fillColor: "rgba(220,220,220,0.2)",
                            strokeColor: "rgba(220,220,220,1)",
                            pointColor: "rgba(220,220,220,1)",
                            pointStrokeColor: "#fff",
                            pointHighlightFill: "#fff",
                            pointHighlightStroke: "rgba(220,220,220,1)",
                            data: [65, 59, 80, 81, 56, 55, 40]
                        },
                        {
                            label: "My Second dataset",
                            fillColor: "rgba(151,187,205,0.2)",
                            strokeColor: "rgba(151,187,205,1)",
                            pointColor: "rgba(151,187,205,1)",
                            pointStrokeColor: "#fff",
                            pointHighlightFill: "#fff",
                            pointHighlightStroke: "rgba(151,187,205,1)",
                            data: [28, 48, 40, 19, 86, 27, 90]
                        }
                    ]
                };
            new Chart(document.getElementById("linechart").getContext("2d")).Line(data,{
                responsive : true,
                maintainAspectRatio: false,
            });

            });
            // Chart.defaults.global.responsive = true;
</script>
</body>
</html>
