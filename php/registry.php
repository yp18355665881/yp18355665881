<?php
include "conn.php";
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Method:POST,GET');
    // 判断前端是否把值传过来，并且匹配数据里的值
    header('content-type:text/html;charset=utf-8');
    if(isset($_POST['username'])){
        $username = $_POST['username'];
        $result = $conn ->query("select * from registry where telphone ='$username'");
        if($result->fetch_assoc()){
            echo true;
        }else{
            echo false;
        }
    }else{
        exit('非法操作');
    }

    //将表单提供过来的值写进数据库
    if(isset($_POST['submit'])){
        $username = $_POST['username'];
        $password = sha1($_POST['password']);
        echo  $username;
        echo $password;
        $conn ->query("insert into registry values('default','$username','$password')");
        header('location:http://192.168.13.22/h5-2/zhe800/src/login.html');
    }
