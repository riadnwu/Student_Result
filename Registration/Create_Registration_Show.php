<?php
include '../Sesion/Session_Chack.php';
$oj=new Create_Registration_Show();
class Create_Registration_Show {
    private $oj="";
    public function __construct() {
        include '../Lay_Out/Lay_Out_CSS.php';
        include '../Lay_Out/Lay_Out.php';
        $this->oj=new Lay_Out();
        $this->oj->Top("Show ".$_SESSION['name']." Course Registration");
        $this->oj->Head($_SESSION['type']);   
        $this->Course_Article();
        $this->oj->Fotter("Copyright &copy; RTTP");
    }
    public function Course_Article()
    {   
        
        include './Create_Registration_Data_Base.php';
        $oj=new Create_Registration_Data_Base();
           $from='<p>User Name:'.$_SESSION['name'].'</p> <table style="border: 1px solid black">
              <tr>
                <th>Exam Year</th>
                <th>Course Code</th>
                <th>Course Title</th> 
                <th>Cradit Hour</th>
                <th>Cradit</th>
                <th>Year</th> 
                <th>Samester</th>
                <th>Department</th>
                <th>Number of CT</th>
                <th>CT Type</th>
              </tr>
              '.$oj->Show_Data().'
              </table> ';
       $this->oj->Article("Admin_Registation",$from); 
    }
}
