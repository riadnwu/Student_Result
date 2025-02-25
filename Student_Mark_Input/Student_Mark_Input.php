<?php
    $inputOj=new Student_Mark_Input();
class Student_Mark_Input{
     private $studentMarkOj="";
     private $dataBaseOj="";
     private $chackYear="";
     public function __construct() {
        include '../Sesion/Session_Chack.php';
        include './Student_Mark_Data_Base.php';
        include '../Lay_Out/Lay_Out_CSS.php';
        include '../Lay_Out/Lay_Out.php';
        
        $this->dataBaseOj=new Student_Mark_Database();
        $this->studentMarkOj=new Lay_Out();
        $this->studentMarkOj->Top("Student's Marks");
        $this->studentMarkOj->Head($_SESSION['type']);   
        $this->Student_Mark_Input_Article();
        $this->studentMarkOj->Fotter("Copyright &copy; RTTP");
    }
    public function Student_Mark_Input_Article()
    { 
        $tempId=$_SESSION['id'];
        $tempId=$tempId[0].$tempId[1].$tempId[2].$tempId[3];
        $examYear=' <Select name="markYear"> ';
        for($i=date("Y");$i>=$tempId;$i--)
        {
            $examYear=$examYear.' 
                   <option value="'.$i.'"> 
                     '.$i.'
                    </option>'   ;   
        }
        $examYear=$examYear.'</Select>';
        
       $from=' 
          <form action="./Student_Mark_Selact_Course.php" method="POST" > 
            <p>Select Exam Year: 
              '.$examYear.'
            </p>
            <p>Select Samester: 
                <Select name="markSamester"">  
                   <option value="Spring"> 
                      Spring
                    </option>
                  <option value="Summer"> 
                      Summer
                    </option>
                  <option value="Fall"> 
                      Fall
                   </option>
                </select>
            </p>
            <br><input type="submit" name="Select" />
          </form>
                ';
       $this->studentMarkOj->Article("Admin_Student_Mark",$from); 
    }
      

}

//<script type="text/javascript">
//
//                    function Auto_Course() {
//                           var examYear = document.markId.examYear.value;
//                          var examSamester = document.markId.examSamester.value;
//                           var year=examSamester.concat("-",examYear);
//                            document.getElementById("chackYear").innerHTML = year;
//                    }
//            </script>