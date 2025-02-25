<?php
include '../Sesion/Session_Chack.php';
$oj=new Create_Course();
class Create_Course {
     private $oj="";
    public function __construct() {
        include '../Lay_Out/Lay_Out_CSS.php';
        include '../Lay_Out/Lay_Out.php';
        include './Create_Course_Variable.php';
        $this->oj=new Lay_Out();
        $this->oj->Top("Add Course");
        $this->oj->Head($_SESSION['type']);   
        $this->Course_Article();
        $this->oj->Fotter("Copyright &copy; RTTP");
    }
    public function Course_Article()
    { 
           $from='  
                   <form action="'. $_SERVER['PHP_SELF'].'" method="POST">
            Course Code:<br>
            <input type="text" name="code" value="'.$GLOBALS['code'].'" />
            <span class="error">'.$GLOBALS['errCode'].'</span>
            
            <br>Course Titel:<br>
            <input type="text" name="titel" value="'.$GLOBALS['titel'].'" />
            <span class="error"> '.$GLOBALS['errTitel'].'</span>
            
            <br>Course Hour:<br>
            <input type="text" name="houre" value="'.$GLOBALS['houre'].'" />
            <span class="error">'.$GLOBALS['errHoure'].'</span>
            
            <br>Course Creadti:<br>
            <input type="text" name="creadit" value="'.$GLOBALS['creadit'].'" />
            <span class="error">'.$GLOBALS['errCreadit'].'</span>
             
            <br>Year:<br>
            <input type="text" name="year" value="'.$GLOBALS['year'].'" />
            <span class="error"> '.$GLOBALS['errYear'].'</span>
            
            <br>Department:<br>
            <input type="text" name="dep" value="'.$GLOBALS['dep'].'" />
            <span class="error">'.$GLOBALS['errDep'].'</span>
            <br><input type="submit" value="Submit" />
        </form>
                   ';
       $this->oj->Article("Admin_Course",$from); 
    }
}
?>