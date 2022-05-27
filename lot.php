<?php
require_once('functions.php');
require_once('bd.php');
$id = 0;

if (isset($_GET["goods_id"]))
{
    $id = $_GET["goods_id"];
    foreach ($goods as $gg)
    {
        if (($gg['goods_id'])== $id)
        {
        $tgoods = $gg;
        }
        else{
            header('404.php');
        }
    }
}
$main = include_template(
    'lot.php',
    [
        'is_auth' => $is_auth,
        'categories' => $categories,
        'goods' => $goods,
        'tgoods' => $tgoods
    ]
);
$layout = include_template(
    'layout.php',
    [
        'title' => $tgoods['goods_name'],
        'main' => $main,
        'categories' => $categories,
        'is_auth' => $is_auth,
        'user_name' => $user_name
    ]
);
print($layout);
