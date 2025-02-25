<?php
include '../Sesion/Session_Chack.php';
$oj=new Show_All_Account();
class Show_All_Account {
     private $oj="";
    public function __construct() {
        include '../Lay_Out/Lay_Out_CSS.php';
        include '../Lay_Out/Lay_Out.php';
        $this->oj=new Lay_Out();
        $this->oj->Top("Create Account");
        $this->oj->Head($_SESSION['type']);   
        $this->Show_Account_Article();
        $this->oj->Fotter("Copyright &copy; RTTP");
    }
    public function Show_Account_Article()
    {    
        include './Create_Account_Data_Base.php';
        $oj=new Create_Account_Data_Base();
           $from=' <table style="border: 1px solid black; font-size:13;">
              <tr>
                <th>Id</th>
                <th>Name</th> 
                <th>Pass Word</th>
                <th>Email</th>
                <th>Department</th> 
                <th>Session</th>
                <th>Type</th>
                <th>Gender</th>
                <th>Mobile Number</th> 
                <th>Birth Day</th>
                <th>Adress</th>
                <th >Location</th>
                <th>Latitude</th> 
                <th>Longitude</th>
                <th>Edit</th>
              </tr>
              '.$oj->Show_Data().'
              </table> ';
       $this->oj->Article("Admin_Create_Account",$from); 
    }
} 