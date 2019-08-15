<?php
include "../conn.php";
$no_kk = $_GET['kd'];

$query = $conn->query("DELETE FROM data_kk WHERE no_kk='$no_kk'");
if ($query){
	$queryy = $conn->query("DELETE FROM data_penduduk WHERE no_kk='$no_kk'");
	echo "<script>alert('Data Berhasil dihapus!'); window.location = 'datakk.php'</script>";
} else {
	echo "<script>alert('Data Gagal dihapus!'); window.location = 'datakk.php'</script>";
}
?>
