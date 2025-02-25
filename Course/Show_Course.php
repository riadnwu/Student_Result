<?php
include '../Sesion/Session_Chack.php';
$oj=new Show_Course();
class Show_Course {
    private $oj="";
    public function __construct() {
        include '../Lay_Out/Lay_Out_CSS.php';
        include '../Lay_Out/Lay_Out.php';
        $this->oj=new Lay_Out();
        $this->oj->Top("Show Course");
        $this->oj->Head($_SESSION['type']);   
        $this->Course_Article();
        $this->oj->Fotter("Copyright &copy; RTTP");
    }
    public function Course_Article()
    {   
        $temp="Second";
        include './Course_Data_Base.php';
        $oj2=new Course_Data_Base();
        $year= array("First","Second","Third","Forth");
        $samester=array("First","Second","Third");
        $from='';
        for($i=0;$i<4;$i++)
        {
            for($j=0;$j<3;$j++)
            {
               $from =$from.'<h2>'.$year[$i].' Year '.$samester[$j].' Samester  ('.($i+1).'.'.($j+1).')<h2><br>
                   <table style="border: 1px solid black">
                  <tr>
                    <th>Course Code</th>
                    <th>Course Title</th> 
                    <th>Cradit Hour</th>
                    <th>Cradit</th>
                    <th>Year</th> 
                    <th>Samester</th>
                    <th>Department</th>
                  </tr>
                  '.$oj2->Show_Data($year[$i],$samester[$j]).'
                  </table> <br>';
            }
        }
           
       $this->oj->Article("Admin_Course",$from); 
    }
}
