<div class="bounceInRight wow ">
<h2>Роллы</h2>
<center class='rabotyagi'>
<?php
$res = mysqli_query($connection, "SELECT * FROM `t_meal`;");
while ($row = mysqli_fetch_assoc($res)) {
	
	echo "<div style='border:2px solid black; border-radius: 10px' class='column-center'>";
	echo "<div>";
	echo "<img  alt='$row[title]' title='$row[title]' src='$row[image]' style='width: 350px; height: 300px;' />";
	echo "</div>";
	echo "<div>";
	echo "<p><b>$row[title]</b></p>";
	echo "<p><b>Цена:  $row[price] BYN </b></p>";
	echo "</div>";
	echo "<div>";
	echo "<button> добавить </button>";
	echo "</div>";

	echo "</div>";
}

?>
</center>
</div>
