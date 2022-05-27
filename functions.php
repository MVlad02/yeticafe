<?php
$is_auth = rand(0, 1);
$user_name = 'Влад';
function price ($price)
{
    $price =ceil($price);
    if ($price >= 1000){
        $result = number_format($price,0,'.',' ');
    }
    else $result = $price;
    return $result . ' ₽';
}
function timer()
{
    $date= strtotime('2022-05-12 24:00');
    $ntime= time();
    $difference= $date-$ntime;
    return gmdate('H:i', $difference);
}
function include_template($name, $data)
{
    $name = 'templates/' . $name;
    $result = '';
    if (!file_exists($name))
    {
        return $result;
    }
    ob_start();
    extract($data);
    require($name);
    $result = ob_get_clean();
    return $result;
}
?>
