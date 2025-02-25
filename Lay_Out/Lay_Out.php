<?php


class Lay_Out {
//    public function __construct() {
//       // include '../';
//    }

    public function Top($name)
    {  
        echo '<title>North Western University</title>
             <link rel="shortcut icon" href="../Image/icon.jpg" />
            <table h1 class="Top">  
                <tr>
                  <td>
                      <img src="../Image/nwu.jpg"  alt="Mountain View" style="width:110px;height:110px;">
                  </td>
                  <td style=" font-size:40;  position: absolute; left:500px;top:40px">
                   North Western University
                  </td>
                 </tr>
               </table>';
                 
    }
    
    public function Head($type)
    {
        if($type=='Home') //For Home
        {
         echo'
        <ul class="Head">
          <li class="Head_Li"><a class="Head_a"href="../Home/Home.php">Home</a></li>
          <li class="Head_Li"><a class="Head_a"href="../Home/Objectives.php">Ojectives</a></li>
          <li class="Head_Li"><a class="Head_a"href="../Home/Trustees.php">Board of Trustees </a></li>
          <li class="Head_Li"><a class="Head_a"href="../Home/Academics.php">Academics</a></li>
          <li class="Head_Li"><a class="Head_a"href="../Home/About.php">About</a></li>
          <li class="Head_Li"><a class="Head_a"href="../Home/Sign_Out.php">Login</a></li>
        </ul>';
        }
        if($type=='Admin') //For Admin
        {echo'
        <ul class="Head">
          <li class="Head_Li"><a class="Head_a"href="../Log_In/Log_In.php">Home</a></li>
          <li class="Head_Li"><a class="Head_a"href="../Account/Create_Account.php">Create Account</a></li>
          <li class="Head_Li"><a class="Head_a"href="../Course/Create_Course.php">Course</a></li>
          <li class="Head_Li"><a class="Head_a"href="../Registration/Create_Registration.php">Registation</a></li>
          <li class="Head_Li"><a class="Head_a"href="../Student_Mark_Input/Student_Mark_Input.php">Student Mark</a></li>
          <li class="Head_Li"><a class="Head_a"href="../Student_Result/Student_Result_Search_By_Id.php">Student Result</a></li>
          <li class="Head_Li"><a class="Head_a"href= "../Home/Sign_Out.php">LogOut</a></li>
        </ul>';
        }
        else if($type=='Teacher')//For Teacher
        {
         echo'
        <ul class="Head">
          <li class="Head_Li"><a class="Head_a"href="../Log_In/Log_In.php">Home</a></li>
          <li class="Head_Li"><a class="Head_a"href="../Registration/Create_Registration.php">Registation</a></li>
          <li class="Head_Li"><a class="Head_a"href="../Student_Mark_Input_Java_Scritts/Student_Mark_Input.php">Student Mark</a></li>
          <li class="Head_Li"><a class="Head_a"href="../Home/Sign_Out.php">LogOut</a></li>
        </ul>';
        }
          else if($type=='Student')//For Student
        {
         echo'
        <ul class="Head">
          <li class="Head_Li"><a class="Head_a"href="../Log_In/Log_In.php">Home</a></li>
          <li class="Head_Li"><a class="Head_a"href="../Student_Registration/Student_Create_Registration.php">Registation</a></li>
          <li class="Head_Li"><a class="Head_a"href="../Student_Result/Student_Result_Show.php">Result</a></li>
          <li class="Head_Li"><a class="Head_a"href="../Home/Sign_Out.php">LogOut</a></li>
        </ul>';  
        }
    }
    public function Article($name,$name1)
        {
          echo '
             <table class="Article_Table">
               <tr class="Article_Table">
                <td class="Left"">'.$this->Left_Article($name).'</td>
                <td class="Article">'.$name1.'</td> 
               </tr>
               
            </table>';
        }
    public function Left_Article($name)
    {
        if($name=='Admin_Home')
        {
           return '
        <ul class="Left_Article">
          <li class="Left_Li"><a class="Left_a"href="./Log_In.php">Show</a></li>
        </ul>'; 
        }
        else if($name=='Admin_Create_Account')
        {
           return '
        <ul class="Left_Article" >
          <li class="Left_Li"><a class="Left_a"href="./Create_Account.php">Create Account</a></li>
          <li class="Left_Li"><a class="Left_a"href="./Show_All_Account.php">Show</a></li>
        </ul>'; 
        }
        else if($name=='Admin_Course')
        {
           return '
        <ul class="Left_Article">
          <li class="Left_Li"><a class="Left_a"href="./Create_Course.php">Add Course</a></li>
          <li class="Left_Li"><a class="Left_a"href="./Show_Course.php">Show</a></li>
        </ul>'; 
        }
        else if($name=='Admin_Registation')
        {
           return '
        <ul class="Left_Article">
          <li class="Left_Li"><a class="Left_a"href="./Create_Registration.php">Create Registation</a></li>
          <li class="Left_Li"><a class="Left_a"href="../Registration/Create_Registration_Show.php">Show</a></li>
        </ul>';
        }
        else if($name=='Admin_Student_Mark')
        {
           return '
          <ul class="Left_Article">
          <li class="Left_Li"><a class="Left_a"href="../Student_Mark_Input/Student_Mark_Input.php">Show Student Mark</a></li>
         </ul>'; 
        }
         else if($name=='Admin_Student_Result')
        {
             
           return '
        <ul class="Left_Article">
        </ul>'; 
        }
          else if($name=='Student_Registration')
        {
             
           return '
        <ul class="Left_Article">
          <li class="Left_Li"><a class="Left_a"href="../Student_Registration/Student_Create_Registration.php">Create Registration</a></li>
          <li class="Left_Li"><a class="Left_a"href="">Show</a></li>
        </ul>'; 
        }
       
    }

    public function Fotter($name)
        {
//          echo "<p class=\"Fotter\">".$name."</p>";
        echo "<p class=\"Fotter\"> Copyright &copy; Riad</p>";
        }
}?>
 