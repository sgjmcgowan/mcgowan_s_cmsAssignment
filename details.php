<?php
	require_once('admin/phpscripts/config.php');
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
<link rel="stylesheet" type="text/css" href="admin/css/main.css">
<title>Details</title>
</head>
<body>
	<?php
		if(!is_string($getSingle)){
			$row = mysqli_fetch_array($getSingle); // video would have ogg and webm available in full site
			echo "<div class='detailed'>
				<img src=\"images/{$row['movies_cover']}\" alt=\"{$row['movies_title']}\">
				<h2>{$row['movies_title']}</h2>
				<p>{$row['movies_year']}</p>
				<p>{$row['movies_story']}</p>
				<video width='440' height='260' controls>
					<source src=\"video/{$row['movies_clip']}\" type='video/mp4'>
				</video><br><br>
				<a href=\"index.php\">Previous</a>
				<a href=\"admin/admin_editall.php?id={$row['movies_id']}\">Edit this Film</a>
				</div>";
			}else{
			echo "<p class=\"error\">{$getSingle}</p>";
		}
	?>

</body>
</html>
