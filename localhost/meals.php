<div class="bounceInRight wow ">
<h2>Роллы</h2>
<center class='rabotyagi'>
<?php
$res = mysqli_query($connection, "SELECT * FROM `t_meal`;");
while ($row = mysqli_fetch_assoc($res)) {
	echo "<div class='column-center'>";
	echo "<img  alt='$row[title]' title='$row[title]' src='$row[image]' />";
	echo "<p><b>$row[title]</b></p>";
	echo "</div>";
}

?>
</center>
</div>
