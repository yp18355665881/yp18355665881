<?php
    header('content-type:text/html;charset = utf-8');
    //连接数据库
    define('HOST','localhost');
    define('UESRNAME','root');
    define('PASSWORD','root');
    define('DBNAME','zhe800');
    $conn = @new mysqli(HOST,UESRNAME,PASSWORD,DBNAME);
    if($conn->connect_error){
        die('数据库连接失败'.$conn->connect_error);//.操作符，拼接
    }
    $conn->query('SET NAMES UTF-8');