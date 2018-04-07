<?php
	//ini_set('display_errors',1);
	//error_reporting(E_ALL);
	require_once('phpscripts/config.php');
	if(isset($_GET['id'])){
		$id = $_GET['id'];
		$tbl = "tbl_movies";
		$col = "movies_id";
		$getSingle = getSingle($tbl, $col, $id);
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit A Film's Information</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

	<div class="inputGroup">
	<h1>Edit A Film's Information</h1>

	<?php
		echo single_edit("tbl_movies","movies_id",$id);
	?>

</div>
</body>
</html>
