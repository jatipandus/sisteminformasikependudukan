<?php
include ("conn.php");
date_default_timezone_set('Asia/Jakarta');

session_start();

$username =$_POST['username']; 
$password = md5($_POST['password']);

if (empty($username) && empty($password)) {
		  echo "<script>alert('username atau password tidak boleh kosong'); window.location = 'login.php'</script>";
	
} else if (empty($username)) {
	 echo "<script>alert('username tidak boleh kosong'); window.location = 'login.php'</script>";
	
} else if (empty($password)) {
	 echo "<script>alert('password tidak boleh kosong'); window.location = 'login.php'</script>";
	
}else{

$result = $conn->query("SELECT * from admin where username= '$username' and password= '$password'");
$row = mysqli_fetch_array ($result);

if (mysqli_num_rows($result) == 1) {
	  $_SESSION['user_id'] = $row['user_id'];
	$_SESSION['username'] = $username;
	$_SESSION['fullname'] = $row['fullname'];
    $_SESSION['gambar'] = $row['gambar'];

	$profildesa=$conn->query("SELECT * from profil_desa");
		if($profildesa->num_rows > 0){
			if ($_SESSION['username']=='penduduk') {
				header('location:admin/penduduk.php');
			}else{
				header('location:admin/index.php');
			}
	
  	
	
		}else{

			
			 echo "<script> window.location = 'admin/input-profildesa.php'</script>";
		}

} else {
	 echo "<script>alert('akun salah !!!'); window.location = 'login.php'</script>";

}}
?>