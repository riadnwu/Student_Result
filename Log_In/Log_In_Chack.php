<?php
include './Log_In_Data_Base.php';
        $dataOj= new Log_In_Data_Base();
       $row=(array) $dataOj->Show_Data($_POST['id'],$_POST['password']);
                if($GLOBALS['count']==1)
                {
                  session_start();
                  $_SESSION['name']= $row[0];
                  $_SESSION['id']= $row[1];
                  $_SESSION['password']= $row[2];
                  $_SESSION['email']= $row[3];
                  $_SESSION['dep']= $row[4];
                  $_SESSION['session']= $row[5];
                  $_SESSION['type']= $row[6];
                  $_SESSION['gender']= $row[7];
                  $_SESSION['mobile']= $row[8];
                  $_SESSION['birth']= $row[9];
                  session_write_close();
                  header("location:./Log_In.php");
                }
                else
                {
                    include '../Home/Sign_Out.php';
                }

