<?php
include '../Sesion/Session_Chack.php';
if($_SERVER['REQUEST_METHOD']=="POST" && isset($_POST['registrationButton']))
{
    include './Student_Create_Registration_Data_Base.php';
    $oj1=new Student_Registration_Database();
    $oj1->Chack_Registrtion();
    include './Student_Create_Registration.php';
}
else
{
    $oj=new Student_Create_Course();
}
class Student_Create_Course {
     private $oj="";
     private $dataOj="";
    public function __construct() {
        include './Student_Create_Registration_Data_Base.php';
        include '../Lay_Out/Lay_Out_CSS.php';
        include '../Lay_Out/Lay_Out.php';
        $this->dataOj=new Student_Registration_Database();
        $this->oj=new Lay_Out();
        $this->oj->Top("Student Course");
        $this->oj->Head($_SESSION['type']);   
        $this->Student_Registration_Article();
        $this->oj->Fotter("Copyright &copy; RTTP");
    }
    public function Student_Registration_Article()
    { 
          $exam="";
       if(date("m")<5)
       {
          $exam="Spring".date("-Y");
       }
       else if(date("m")>4&&date("m")<9)
       {
          $exam="Summer".date("-Y");
       }
       else if(date("m")>4&&date("m")<9)
       {
          $exam="Fall".date("-Y");
       }
       $GLOBALS['exam']=$exam;
       $from=' 
          <form action="'.$_SERVER["PHP_SELF"].'" method="POST">
            Department: '.$_SESSION['dep'].'&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            Exam Year: '.$GLOBALS['exam'].'<br> <br><br>  
            Year: '.$_POST['registrationYear'].'&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            Samester: '.$_POST['registrationSamester'].'<br> <br><br>      
            <p>Select Course: 
                <Select name="techerCourseId">  
                  '.$this->dataOj->Show_Title_By_Department().'
                </select>
            </p>
            
            <br><input type="submit" value="Submit" name ="registrationButton"/>
          </form>
                ';
       $this->oj->Article("Student_Registration",$from); 
    }
      

}