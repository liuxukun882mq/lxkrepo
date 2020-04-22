<?php   #php to redish
$redis = new redis();
$redis->connect('192.168.4.50',6350);
$redis->set('redistest','666666');
echo $redis->get('redistest');
?>
