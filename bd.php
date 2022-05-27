<?php
$link = mysqli_connect('127.0.0.1', 'root', '','shema');
mysqli_set_charset($link, 'utf8');
$categories = '';
if (!$link) {
    $error = mysqli_connect_error();
    $content = include_template('error.php', ['error' => $error]);
}
else {
    $sql = 'SELECT * FROM category';
    $result = mysqli_query($link, $sql);

    if ($result) {
        $categories = mysqli_fetch_all($result, MYSQLI_ASSOC);
    }
    else {
        $error = mysqli_error($link);
        $content = include_template('error.php', ['error' => $error]);
    }
    $sql1 = 'SELECT * FROM goods inner join category on goods.id_category=category.category_id';
    $result = mysqli_query($link, $sql1);

    if ($result) {
        $goods = mysqli_fetch_all($result, MYSQLI_ASSOC);
    }
    else {
        $error = mysqli_error($link);
        $content = include_template('error.php', ['error' => $error]);
    }
}

