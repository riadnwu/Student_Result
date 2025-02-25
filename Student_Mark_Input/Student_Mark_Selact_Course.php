<?php
    $inputOj=new Student_Mark_Select_Course();
class Student_Mark_Select_Course{
     private $studentMarkOj="";
     private $dataBaseOj="";
     public function __construct() {
        include '../Sesion/Session_Chack.php';
        include './Student_Mark_Data_Base.php';
        include '../Lay_Out/Lay_Out_CSS.php';
        include '../Lay_Out/Lay_Out.php';
        
        $this->dataBaseOj=new Student_Mark_Database();
        $this->studentMarkOj=new Lay_Out();
        $this->studentMarkOj->Top("Student's Marks");
        $this->studentMarkOj->Head($_SESSION['type']);   
        $this->Student_Mark_Select_Course_Article();
        $this->studentMarkOj->Fotter("Copyright &copy; RTTP");
    }
    public function Student_Mark_Select_Course_Article()
    { 
       $year=$_POST['markYear'];
       $Samester=$_POST['markSamester'];
       $examYear=$Samester."-".$year;  
       $from=' 
            <form action="./Student_Mark_Table_Show.php" method="POST" > 
              Year: '.$year.'&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            Samester: '.$Samester.'<br> <br><br>    
             <p>Select Course: 
                <Select name="techerCourseId">  
                   '.$this->dataBaseOj->Search_Course_Title_By_Exam_Year($examYear).'
                </select>
            </p>
            <br><input type="submit" />
          </form>
                ';
       $this->studentMarkOj->Article("Admin_Student_Mark",$from); 
        $this->chackYear='<span id="chackYear"></span>';
    }
      

}