<?php
include "../conn.php";

$user_id       = $_POST['user_id'];
$username      = $_POST['username'];
$fullname		=$_POST['fullname'];
$p=md5($_POST['password']);
$password=$_POST['password'];

  $fileku= $_FILES['nama_file']['name'];

		$sqll=$conn->query("SELECT * FROM admin where user_id='$user_id' ");
						 $data=mysqli_fetch_array($sqll);
						 $pass= $data['password'];
					




				if ($password==$pass) {
					if ($fileku!="") {
					 move_uploaded_file($_FILES['nama_file']['tmp_name'],"gambar_admin/".$fileku );
						$query = $conn->query("UPDATE admin SET gambar='gambar_admin/$fileku', username='$username', fullname='$fullname' WHERE user_id='$user_id'");

						if($query){
									$sql=$conn->query("SELECT * FROM admin where user_id='$user_id' ");
									 $dataa=mysqli_fetch_array($sql);
									 $name=$dataa['username'];
									if ($name==$fullname) {
			        				 echo "<script>alert('edit admin berhasil !! '); window.location = 'dataadmin.php'</script>";
			        				}else{
			        					
			        				   echo "<script>alert('Edit berhasil, silahkan Login kembali !! '); window.location = '../logout.php'</script>";	
			        				}
        				}else{
        								echo"Gagal".$conn->error();
        				}
        			}else{
        				$query = $conn->query("UPDATE admin SET  username='$username', fullname='$fullname' WHERE user_id='$user_id'");

						if($query){
									$sql=$conn->query("SELECT * FROM admin where user_id='$user_id' ");
									 $dataa=mysqli_fetch_array($sql);
									 $name=$dataa['fullname'];
									if ($name==$fullname) {
			        				 echo "<script>alert('edit admin berhasil !! '); window.location = 'dataadmin.php'</script>";
			        				}else{
			        					echo "ok salah";
			        				//    echo "<script>alert('Edit berhasil, silahkan Login kembali !! '); window.location = '../logout.php'</script>";	
			        				}
        				}else{
        								echo"Gagal".$conn->error();
        				}

        			}




				}else{
					if ($fileku!="") {
					 move_uploaded_file($_FILES['nama_file']['tmp_name'],"gambar_admin/".$fileku );
					
					$query = $conn->query("UPDATE admin SET gambar='$fileku' username='$username', password='$p', fullname='$fullname' WHERE user_id='$user_id'");
						if($query){
									$sql=$conn->query("SELECT * FROM admin where user_id='$user_id' ");
									 $dataa=mysqli_fetch_array($sql);
									 $name=$dataa['fullname'];
									if ($name==$fullname) {
			        				 echo "<script>alert('edit admin berhasil !! '); window.location = 'dataadmin.php'</script>";
			        				}else{
			        				   echo "<script>alert('Edit berhasil, silahkan Login kembali !! '); window.location = '../logout.php'</script>";	
			        				}
        				}else{
        								echo"Gagal".$conn->error();
        				}
        				}else{
        				$query = $conn->query("UPDATE admin SET  username='$username', fullname='$fullname' WHERE user_id='$user_id'");

						if($query){
									$sql=$conn->query("SELECT * FROM admin where user_id='$user_id' ");
									 $dataa=mysqli_fetch_array($sql);
									 $name=$dataa['fullname'];
									if ($name==$fullname) {
			        				 echo "<script>alert('edit admin berhasil !! '); window.location = 'dataadmin.php'</script>";
			        				}else{
			        				
			        				   echo "<script>alert('Edit berhasil, silahkan Login kembali !! '); window.location = '../logout.php'</script>";	
			        				}
        				}else{
        								echo"Gagal".$conn->error();
        				}

        			}

       
				}



?>
