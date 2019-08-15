<?php
$con=mysqli_connect("localhost","root","","sisfo");

	$sql = "SELECT no_kk  FROM data_kk
			WHERE no_kk LIKE '%".$_GET['query']."%'
			LIMIT 3"; 
	$result    = mysqli_query($con,$sql);
		
	$json = [];
	while($row = $result->fetch_assoc()){
	     $json[] = $row['no_kk'];
	}

	echo json_encode($json);
?>