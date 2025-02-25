<?php
include '../Sesion/Session_Chack.php';
include './Create_Registration_Data_Base.php';
$oj=new Create_Course();
$oj1=new Create_Registration_Data_Base();
if($_SERVER['REQUEST_METHOD']=="POST" )
{
    $oj1->Chack_Registrtion();
}
class Create_Course {
     private $oj="";
     private $dataOj="";
    public function __construct() {
        include '../Lay_Out/Lay_Out_CSS.php';
        include '../Lay_Out/Lay_Out.php';
        
        $this->dataOj=new Create_Registration_Data_Base();
        $this->oj=new Lay_Out();
        $this->oj->Top("Add Course");
        $this->oj->Head($_SESSION['type']);   
        $this->Registration_Article();
        $this->oj->Fotter("Copyright &copy; RTTP");
    }
    public function Registration_Article()
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
            Exam Year: '.$exam.'<br> <br><br>  
            <p>Select Course: 
                <Select name="courseId">  
                 '.$this->dataOj->Show_Title_By_Department().'
                </select>
            </p>
            <p>Class Test Number: 
               <Select name="ctNo">  
                 <option value="1">1</option>
                 <option value="2">2</option> 
                 <option value="3">3</option> 
                </select>
            </p> 
           <p>Class Test Type: 
               <Select name="ctType">  
                 <option value="BestOne">Best One</option>
                 <option value="BestTwo">Best Two</option> 
                 <option value="Average">Average</option> 
                </select>
            </p> 
            <br><input type="submit" value="Submit" />
          </form>
                ';
       $this->oj->Article("Admin_Registation",$from); 
    }
      

}
//                
//            <p>Select Year: 
//                <Select name="year">  
//                 <option value="Frist">Frist Year</option>
//                 <option value="Second">Second Year</option> 
//                 <option value="Third">Third Year</option> 
//                 <option value="Forth">Forth Year</option>  
//                </select>
//            </p>   
//            <p>Select Samester: 
//                <Select name="samester">  
//                 <option value="Frist">Frist Samester</option>
//                 <option value="Second">Second Samester</option> 
//                 <option value="Third">Third Samester</option>  
//                </select>
//            </p> 