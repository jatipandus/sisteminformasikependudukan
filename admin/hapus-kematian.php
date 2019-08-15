
<?php
include "../conn.php";
$nik = $_GET['kd'];

$query = $conn->query("DELETE FROM data_penduduk WHERE nik='$nik'");
$query2 = $conn->query("DELETE FROM data_kematian WHERE nik='$nik'");

if ($query){
	echo "<script>alert('Data Berhasil dihapus!'); window.location = 'datakematian.php'</script>";
} else {
	echo "<script>alert('Data Gagal dihapus!'); window.location = 'datakematian.php'</script>";
}
?>