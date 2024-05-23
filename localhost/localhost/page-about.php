<?php

session_start();
require_once "_connect.php";

// Checks autoriaztion
$user_id = 0;
if (isset($_COOKIE['ss_token'])) {
	$user_token = $_COOKIE['ss_token'];
} else {
	$user_token = null;
}
$res = mysqli_query($connection, "SELECT * FROM `ss_users` WHERE (`token` = '$user_token') LIMIT 1;");
if (mysqli_num_rows($res) > 0) {
	$row = mysqli_fetch_assoc($res);

	$user_id = $row['id_user'];
	$user_email = $row['email'];
	$user_name = $row['username'];
	$user_phone = $row['phone'];
	$user_type = $row['type'];
}

?>
<!doctype html>
<html>
<head>
<title>О нас
</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="Салон красоты Glamur" />
<meta name="viewport" content="width=device-width, initial-scale=0.30, minimum-scale=0, maximum-scale=5.0, user-scalable=yes" />
<link rel="icon" href="favicon.ico?0" type="image/x-icon" />
<link rel="shortcut icon" href="favicon.ico?0" type='image/x-icon' />
<link rel="stylesheet" type="text/css" href="css/main.css?3" />
<link href="css/datepicker.min.css" rel="stylesheet" type="text/css">
</head>
<body>

<main class="site-wrapper-container">

<!-- Header -->
<div class="site-header-container">
<?php require_once 'ss_header.php'; ?>
</div>
<!-- Header -->

<!-- Menu -->
<div class="site-menu-container">
<?php require_once 'ss_menu.php'; ?>
</div>
<!-- Menu -->

<!-- О нас  -->
<div class="site-content-container">
<h2 class="up _a-hide">О нас</h2>
<p>
Суши бар "Рыбья Голова" был создан в 1999 году в Гродно и был одним из первых ресторанов в Беларуси, специализирующихся на японской кухне, а именно на суши.

Основателем суши бара "Рыбья Голова" был Даниил Сорока, который уже имел опыт работы в сфере ресторанного бизнеса. Он совместно с японским шеф-поваром Тосио Танакой создал меню, в основе которого были различные виды суши и роллов.

Название "Рыбья Голова" было выбрано не случайно. Это японская традиция, которая связана с утилизацией рыбных отходов. Рыбьи головы, хвосты и кости, которые не подходят для приготовления суши и других блюд, используются для приготовления бульона, который затем подают гостям вместе с суши. Таким образом, название "Рыбья Голова" символизирует традиционный японский подход к приготовлению еды, включающий минимальные отходы и максимальное использование всех частей продуктов.

Суши бар "Рыбья Голова" стал популярным среди любителей японской кухни и в настоящее время имеет несколько филиалов в разных городах Беларуси.

</p>
</div>
<!-- О нас  -->

<!-- Гомосеки -->
<div class="site-content-container" >
<?php require_once 'pp_employees.php'; ?>
</div>
<!-- Гомосеки -->

<div class="site-content-container" >


<h2 class="up _a-hide">Акция!</h2>
<img class="img-event" src="images/event.png" alt="">
<p class="up _a-hide">
Едва переступив порог нашего салона, Вы понимаете, что попали в особый мир - мир изысканности, утонченности, красоты, стиля. Приятный интерьер - визитная карточка салона: необыкновенно гармоничная обстановка не только зарождает в Вас настроение и желание преобразиться, но и создает уверенность, что вы действительно попали в руки настоящих мастеров стиля. Это сказочное место для отдыха в центре города где Вы можете приятно и с пользой провести время.
</p>
<p class="up _a-hide" style='margin-bottom: 50px;'>
НЕ ОТКАЗЫВАЙТЕ СЕБЕ В УДОВОЛЬСТВИИ С САЛОНОМ КРАСОТЫ !
</p>
<h2 class="up" >Как к нам добраться</h2>
<iframe  src="https://yandex.ru/map-widget/v1/?um=constructor%3A2ba493289b15b1b72f16651dc8de3e5b89cfeae37e83732b99fc2c00fe1a9b4b&amp;source=constructor" width="100%" height="400" frameborder="0"></iframe>
   <div>

</div>
</div>



<!-- Footer -->
<div class="site-footer-container">
<?php require_once 'ss_footer.php'; ?>
</div>
<!-- Footer -->

</main>

<script defer src="./scripts/tablePicker.js"></script>
<script type="text/javascript" src="scripts/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="scripts/datepicker.min.js"></script>
<script type="text/javascript" src="scripts/jquery.tablesorter.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("table").tablesorter();
	});
</script>
</body>
</html>
