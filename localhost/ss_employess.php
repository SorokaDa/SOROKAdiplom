<div class="bounceInRight wow">
<h2>Сотрудники</h2>
<center class="employeess__items">
<?php
$res = mysqli_query($connection, "SELECT * FROM `ss_employees`;");
while ($row = mysqli_fetch_assoc($res)) {
	echo "<div class='column-center rabotyagi'>";
	echo "<img class='img-round' alt='$row[fio]' title='$row[fio]' src='images/e$row[id_employee].jpg' />";
	echo "<p><b>$row[fio]</b></p>";
	echo "</div>";
}

?>
</center>
</div>