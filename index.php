<?php
require_once('functions.php');
require_once('bd.php');

$main = include_template(
    'index.php',
    [
        'categories' => $categories,
        'goods' => $goods,
    ]
);
$layout = include_template(
    'layout.php',
    [
        'title' => 'Главная страница',
        'main' => $main,
        'categories' => $categories,
        'is_auth' => $is_auth,
        'user_name' => $user_name,
    ]
);
print($layout);
?>
