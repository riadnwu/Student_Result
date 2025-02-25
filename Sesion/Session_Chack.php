<?php
       session_start();
       if(!isset($_SESSION['id'])&&!isset($_SESSION['password']))
       { 
         
         header("location:../Home/Sign_Out.php");
       }
       session_write_close();
      
