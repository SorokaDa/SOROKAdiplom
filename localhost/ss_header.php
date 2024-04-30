<div class='header-left'>
    <img class="logo" src="images/logo.png" />
    <h1 class="down">РЫБЬЯ ГОЛОВА</h1>
</div>

<div class='header-right'>
    <?php

    if ($user_id > 0) {

        echo "<img src='images/user.png' /> <b>$user_name</b><br /><br />";

        echo "<a href='online-edit.php'>Личный кабинет</a><br />";
        echo "<a href='./_logout.php'>Выйти</a>";
    } else {

    ?>

        <div class='in-exit'>
            <button id="btn-in">Войти</button>
            <a class="reg" href="page-register.php">Регистрация</a>
        </div>
        

    <?php

    }

    ?>


</div>