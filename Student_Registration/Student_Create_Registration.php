<?php
    $createOj=new Create_Course();
class Create_Course {
     private $oj="";
     private $dataOj="";
   public function __construct() {
        include '../Sesion/Session_Chack.php';
        include '../Lay_Out/Lay_Out_CSS.php';
        include '../Lay_Out/Lay_Out.php';
        
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
          <form action="Student_Registration_Submit.php" method="POST">
            Department: '.$_SESSION['dep'].'&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            Exam Year: '.$exam.'<br> <br><br>  
            <p>Select Year: 
                <Select name="registrationYear">  
                   <option value="First"> 
                      First Year 
                    </option>
                    <option value="Second"> 
                      Second Year 
                    </option>
                    <option value="Third"> 
                      Third Year 
                    </option>
                    <option value="Forth"> 
                      Forth Year 
                    </option>
                </select>
            </p>
            <p>Select Samester: 
                <Select name="registrationSamester">  
                   <option value="First"> 
                      First Samester 
                    </option>
                    <option value="Second"> 
                      Second Samester 
                    </option>
                    <option value="Third"> 
                      Third Samester 
                    </option>
                </select>
            </p>
            <br><input type="submit" name="Submit" />
          </form>
                ';
       $this->oj->Article("Student_Registration",$from); 
    }
      

}