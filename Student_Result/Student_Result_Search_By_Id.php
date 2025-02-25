<?php
include './Student_Result_Data_base.php';
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['submit']) ) {
    
    $dataBase=new Student_Result_Data_base();
    $dataBase->Chack_Mark($_POST['studentId']);
    
}
else
{
    $inputOj=new Student_Resule_search_By_Id();
}
    
class Student_Resule_search_By_Id{
     private $studentMarkOj="";
     private $dataBaseOj="";
     public function __construct() {
        include '../Sesion/Session_Chack.php';
        include '../Lay_Out/Lay_Out_CSS.php';
        include '../Lay_Out/Lay_Out.php';
        
        $this->dataBaseOj=new Student_Result_Data_base();
        $this->studentMarkOj=new Lay_Out();
        $this->studentMarkOj->Top("Student Result");
        $this->studentMarkOj->Head($_SESSION['type']);   
        $this->Student_Resule_search_By_Id_Article();
        $this->studentMarkOj->Fotter("Copyright &copy; RTTP");
    }
    public function Student_Resule_search_By_Id_Article()
    { 
        $from=' 
          <form action="'.htmlspecialchars($_SERVER["PHP_SELF"]).'" method="POST" > 
            <p>Select Student Id: 
                <input type="text" name="studentId" value="" />
            </p>
            <br><input type="submit" name="submit" />
          </form>
                ';
       $this->studentMarkOj->Article("Admin_Student_Result",$from); 
    }
    
  
      

}
