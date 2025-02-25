<?php
class Session {
    
    public function __construct() {
        session_start();
    }
    public function Insert_Session()
    {
//         
//         if(!isset($_SESSION['id'])&& !isset($_SESSION['password']))
//       { 
//        $dataOj1= new Log_In_Data_Base();
//        $row=(array)$dataOj1->Show_Data($_POST['id'],$_POST['password']);
//        $_SESSION['id']=$row[0];
//        $_SESSION['password']=$row[1];
//        $_SESSION['type']=$row[6];
//       }
//       session_write_close();
    }
     public function Destroy_Session()
    {
        session_unset(); 
        session_destroy(); 
        session_write_close(); 
    }
}
